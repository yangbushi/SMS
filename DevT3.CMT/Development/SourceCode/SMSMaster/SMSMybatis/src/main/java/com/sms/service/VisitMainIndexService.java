package com.sms.service;

import java.util.Date;
import java.util.List;


import com.sms.model.EvaluationPlan;
import com.sms.model.VisitMainIndex;

public interface VisitMainIndexService {


	

	/** 
	 * SELECT TOP topNumber a.*,b.MOBILE_NUMBER
	 * FROM VISIT_MASTER_INDEX a LEFT JOIN b PERSON_MASTER_INDEX ON a.IDENTITY_NO = b.IDENTITY_NO  //关联查询
	 * WHERE a.VISIT_END_DATE_TIME is not null                              //就诊结束了
	 * AND b.MOBILE_NUMBER is not null AND b.MOBILE_NUMBER <> ''          //手机号码不能为空    
	 * AND startCheckDateTime  < a.VISIT_END_DATE_TIME < endCheckDateTime   //发送时间要在分段的抽查时间内
	 * AND currentDateTime - a.VISIT_END_DATE_TIME > delayMinutes*60*1000   //5分钟以后才可以发送
	 * AND a.VISIT_HCO_CODE IN (evaluationPlan.getEvaluateOrgCode()*这里需要对字符串进行分割*) //患者就诊机构需要在测评计划的测评对象中
	 * ORDER BY a.VISIT_END_DATE_TIME DESC  //根据就诊结束时间倒叙排列
	 * @param evaluationPlan
	 * @param startCheckDateTime
	 * @param endCheckDateTime 
	 * @param currentDateTime  当前时间
	 * @param delayMinutes 单位为分钟
	 * @param topNumber
	 * @return 失败：null 成功：list对象（长度可能为0）
	 */
	List<VisitMainIndex> getVisitMainIndexs(EvaluationPlan evaluationPlan,
			Date startCheckDateTime,
			Date endCheckDateTime,
			Date currentDateTime,
			int delayMinutes,
			int topNumber);
	/**
	 * 筛选daysOfNoRepeat天内未发过短信的患者就诊
	 * @param screenedVisitMainIndexs
	 * @param currentDateTime
	 * @param daysOfNoRepeat
	 * @return 失败：null 成功：list对象（长度可能为0）
	 */
	List<VisitMainIndex> getLimitDaysNoRepeatVisit(List<VisitMainIndex> screenedVisitMainIndexs,
			Date currentDateTime, 
			int daysOfNoRepeat);
	
	List<VisitMainIndex> getAll();
}
