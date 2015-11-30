package com.smsmsg.service;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;



import com.alibaba.fastjson.JSON;
import com.sms.enums.EnumCsrPlanStatus;
import com.sms.enums.EnumVisitType;
import com.sms.model.EvaluationPlan;
import com.sms.model.EvaluationRecord;
import com.sms.model.VisitMainIndex;
import com.sms.service.EvaluationPlanService;
import com.sms.service.EvaluationRecordService;
import com.sms.service.PersonMasterIndexService;
import com.sms.service.VisitMainIndexService;
import com.sms.util.MybatisConst;
import com.smsmsg.model.CheckRules.CheckRule;
import com.smsmsg.model.CsrPlanRule;
import com.smsmsg.model.JsonHttpPostRequest;
import com.smsmsg.model.JsonSendMsg;
import com.smsmsg.model.SendMsgConfig;
import com.smsmsg.service.biz.BeanFactory;
import com.smsmsg.util.JsonHelper;

public class SmsMsgService extends Thread {
	private boolean isSuspend = false;  
    private String control = ""; 
    public void setIsSuspend(boolean suspend) {  
        if (!suspend) {  
            synchronized (control) {  
                control.notifyAll();  
            }  
        }  
        this.isSuspend = suspend;  
    }  
    public boolean getIsSuspend() {  
        return this.isSuspend;  
    }  
    
    
	EvaluationPlanService evaluationPlanService  =  (EvaluationPlanService) BeanFactory.getInstance().getBean("EvaluationPlanService");
	VisitMainIndexService visitMainIndexService = (VisitMainIndexService) BeanFactory.getInstance().getBean("VisitMainIndexService"); 
	EvaluationRecordService evaluationRecordService = (EvaluationRecordService) BeanFactory.getInstance().getBean("EvaluationRecordService");
	PersonMasterIndexService personMasterIndexService = (PersonMasterIndexService) BeanFactory.getInstance().getBean("PersonMasterIndexService");

	
	private static final Logger logger = Logger
			.getLogger(SmsMsgService.class);
	
	@Override
	public void start() {
		super.start();
	}
	
	/**
	 * 设置POST请求的JSON参数
	 * @param jsonSendMsg
	 * @param visitMainIndex
	 * @return
	 */
	private JsonSendMsg  setMsgArgs(JsonSendMsg jsonSendMsg,VisitMainIndex visitMainIndex){
		jsonSendMsg.setArgs(Arrays.asList("1232","4234"));
		jsonSendMsg.setDestinationNumber(visitMainIndex.getPersonMasterIndex().getMobileNumber());
		return jsonSendMsg;
	}

	/**
	 * 组装满意测评记录
	 * @param visitMainIndex  就诊主索引
	 * @param csrPlanRule     计划规则
	 * @param mobilePhoneNum  手机号码
	 * @param nowDateTime  短信发送时间
	 * @return  满意测评记录
	 */
	private EvaluationRecord generateEvaluationRecord(VisitMainIndex visitMainIndex,
			CsrPlanRule csrPlanRule,
			Date nowDateTime){

		EvaluationRecord evaluationRecord = new EvaluationRecord();
		evaluationRecord.setPlanId(csrPlanRule.getEvaluationPlan().getPlanId());
		evaluationRecord.setIdentityNo(visitMainIndex.getIdentityNo());
		evaluationRecord.setName(visitMainIndex.getName());
		evaluationRecord.setMobilePhoneNum(visitMainIndex.getPersonMasterIndex().getMobileNumber());
		evaluationRecord.setVisitId(visitMainIndex.getVisitId().toString());
		evaluationRecord.setVisitType(visitMainIndex.getVisitType());
		evaluationRecord.setVisitStartDateTime(visitMainIndex.getVisitStartDateTime());
		evaluationRecord.setVisitOrgCode(visitMainIndex.getVisitHcoCode());
		evaluationRecord.setVisitOrgName(visitMainIndex.getVisitHcoName());
		evaluationRecord.setHisDeptCode(visitMainIndex.getHisDeptCode());
		evaluationRecord.setHisDeptName(visitMainIndex.getHisDeptName());
		evaluationRecord.setDoctorCode(visitMainIndex.getDoctorCode());
		evaluationRecord.setDoctorName(visitMainIndex.getDoctorName());
		evaluationRecord.setSmsSendContent("");//短信内容为空
		evaluationRecord.setSendDateTime(nowDateTime);
		evaluationRecord.setBoolReply(false);
		return evaluationRecord;
	}

	@Override
	public void run() {

		while(true){
			try {
				synchronized (control) {  
	                if (isSuspend) {  
	                    try {  
	                        control.wait();  
	                    } catch (InterruptedException e) {  
	                        e.printStackTrace();  
	                    }  
	                }  
	            }  
	             
	            
	            
				//TODO 10秒钟遍历一次测评计划表
				Thread.sleep(1000);
				JsonSendMsg jsonSendMsg = new JsonSendMsg(new SendMsgConfig());//后期改成可配置
				Date nowDateTime = new Date();
				
				List<EvaluationPlan> planList = evaluationPlanService.getEvaluationPlans(
						new EnumCsrPlanStatus[] { EnumCsrPlanStatus.UnExecute, EnumCsrPlanStatus.Executing });
				if(planList == null){
					continue;
				}
				
				
				for (EvaluationPlan evaluationPlan : planList) {
					/**
					 * SETP1 更新状态，如果更新成已完成的就不需要执行计划了
					 */
					if (evaluationPlan.getEndDateTime().compareTo(nowDateTime) <= 0) {
						evaluationPlan.setEnumCsrPlanStatus(EnumCsrPlanStatus.Complted);
						if (evaluationPlanService.update(evaluationPlan) == MybatisConst.RETURN_RESULT_FAIL)  {
							logger.info(JSON.toJSONStringWithDateFormat(String.format("更新%s对象完成状态失败", 
									JsonHelper.tranObjectToJsonString(evaluationPlan)), MybatisConst.DATETIME_FORMAT_TIME_SECOND));
						}
						continue;
					} 
					else if (evaluationPlan.getStartDateTime().compareTo(nowDateTime) < 0
							&& evaluationPlan.getEndDateTime().compareTo(nowDateTime) > 0) {
						if (evaluationPlan.getEnumCsrPlanStatus() == EnumCsrPlanStatus.UnExecute) {
							evaluationPlan.setEnumCsrPlanStatus(EnumCsrPlanStatus.Executing);
							if (evaluationPlanService.update(evaluationPlan) == MybatisConst.RETURN_RESULT_FAIL) {
								logger.info(JSON.toJSONStringWithDateFormat(String.format("更新%s对象进行中失败", 
										JsonHelper.tranObjectToJsonString(evaluationPlan)), MybatisConst.DATETIME_FORMAT_TIME_SECOND));
								continue;
							}
						}
					}
					CsrPlanRule csrPlanRule = new CsrPlanRule(evaluationPlan);
					CheckRule checkRule = csrPlanRule.getMatchedCheckRule(nowDateTime);
					if (checkRule == null)
						continue;
					/**
					 * STEP2 根据测评计划规则来获取符合要求的患者信息 
					 * 满足规则： 
					 * 	1、 5分钟后发送短信 ，根据测评计划中的测试对象
					 * 	2、 根据抽取规则分时间段发送
					 */
					List<VisitMainIndex> visitMainIndexs = visitMainIndexService.getVisitMainIndexs(
							csrPlanRule.getEvaluationPlan(), 
							checkRule.getStartVistitCheckDateTime(nowDateTime),
							checkRule.getEndVisitCheckDateTime(nowDateTime), 
							nowDateTime,
							csrPlanRule.getMinutesOfSendAfterVisit(), 50);
					
					if(visitMainIndexs == null){
						logger.info(JSON.toJSONStringWithDateFormat("根据测评计划规则来获取符合要求的患者就诊信息失败 ",  MybatisConst.DATETIME_FORMAT_TIME_SECOND));
						continue;
					}
					if(visitMainIndexs.size() == 0){
						continue;
					}
	
					
					/**
					 * STEP3  根据计划规则再次筛选患者 满足规则：
					 * 	3、7天内同一患者不重复 
					 * 	      从50条记录中筛选7天内未发过短信的患者
					 */
					visitMainIndexs = visitMainIndexService.getLimitDaysNoRepeatVisit(
							visitMainIndexs, 
							nowDateTime, 
							csrPlanRule.getDaysOfNoRepeat());
					if(visitMainIndexs == null){
						logger.info(JSON.toJSONStringWithDateFormat(String.format("筛选就诊主索引记录%s集合失败", 
								JsonHelper.tranObjectToJsonString(visitMainIndexs)), MybatisConst.DATETIME_FORMAT_TIME_SECOND));
						continue;
					}
					if(visitMainIndexs.size() == 0){
						continue;
					}
	
					
					
					/**
					 * STEP4  根据计划规则再次筛选患者 满足规则：
					 * 	4、一天内非住院的就诊最多1000条，住院全发。 
					 *     根据计划规则时间段发送该时间段剩余能发送的短信
					 */
					int numOfHasSendedMsg = evaluationRecordService.getNumOfHasSendMsg(
							checkRule.getStartCheckDateTime(nowDateTime), 
							checkRule.getEndCheckDateTime(nowDateTime), 
							csrPlanRule.getEvaluationPlan().getPlanId(),
							new EnumVisitType[]{EnumVisitType.NormalClinic,EnumVisitType.EmergencyTreatment,EnumVisitType.PhysicalExam});
					if(numOfHasSendedMsg == MybatisConst.RETURN_RESULT_FAIL){
						logger.info(JSON.toJSONStringWithDateFormat("获取已发送短信数量失败", MybatisConst.DATETIME_FORMAT_TIME_SECOND));
					}
				
					
					
					int numOfSurplusSendedMsg = checkRule.getMsgWeightNumber(csrPlanRule.getEvaluationPlan().getDaySmsCountLimit()) - numOfHasSendedMsg;
					int count = 0;
					for (VisitMainIndex visitMainIndex : visitMainIndexs) { //住院全发，门诊至多发送numOfSurplusSendedMsg条
						if (count > numOfSurplusSendedMsg - 1
								&& !EnumVisitType.getClinicEnumVisitTypes().contains(visitMainIndex.getEnumVisitType())) {
							continue;
						}

						setMsgArgs(jsonSendMsg, visitMainIndex);
						
						JsonHttpPostRequest httpPostRequest = MsgManger.SendMessage(jsonSendMsg);
						if(httpPostRequest != null && httpPostRequest.getResultCode().equals(MsgManger.RES_OF_SEND_MSG_SUCCESS))
						{
							logger.info(JSON.toJSONStringWithDateFormat(String.format("发送短信%s对象成功", 
									JsonHelper.tranObjectToJsonString(jsonSendMsg) + JsonHelper.tranObjectToJsonString(httpPostRequest) ) , MybatisConst.DATETIME_FORMAT_TIME_SECOND));
							
							EvaluationRecord evaluationRecord = generateEvaluationRecord(
									visitMainIndex, 
									csrPlanRule, 
									nowDateTime);

							// 发送成功以后往记录表中插入数据
							if(evaluationRecordService.insert(evaluationRecord) == MybatisConst.RETURN_RESULT_FAIL){
								logger.info(JSON.toJSONStringWithDateFormat(String.format("插入测评记录%s对象失败", 
										JsonHelper.tranObjectToJsonString(evaluationRecord)), MybatisConst.DATETIME_FORMAT_TIME_SECOND));
							}
							if(!EnumVisitType.getClinicEnumVisitTypes().contains(visitMainIndex.getEnumVisitType())){
								count++;
							} 
						}
						else {
							if(httpPostRequest == null){
								logger.info(JSON.toJSONStringWithDateFormat(String.format("发送短信%s对象失败", 
										JsonHelper.tranObjectToJsonString(jsonSendMsg)), MybatisConst.DATETIME_FORMAT_TIME_SECOND));
							}else {
								logger.info(JSON.toJSONStringWithDateFormat(String.format("发送短信%s对象失败", 
										JsonHelper.tranObjectToJsonString(jsonSendMsg)+ JsonHelper.tranObjectToJsonString(httpPostRequest)), MybatisConst.DATETIME_FORMAT_TIME_SECOND));
							}
							
						}
					}

				}
				
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		

	}

}
