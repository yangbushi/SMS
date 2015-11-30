package com.sms.service;


import java.util.Date;

import com.sms.enums.EnumVisitType;
import com.sms.model.EvaluationRecord;
import com.sms.model.Page;

public interface EvaluationRecordService {

	/**
	 * 获取某一段抽查时间段内，指定的计划ID和就诊类别的短信数量
	 * @param startCheckDateTime  
	 * @param endCheckDateTime
	 * @param planId
	 * @param enumVisitTypes
	 * @return 成功：count值；失败：-1；空：0
	 */
	int getNumOfHasSendMsg(Date startCheckDateTime,Date endCheckDateTime,int planId,EnumVisitType[] enumVisitTypes);
	
	/**
	 * 插入满意度测评记录
	 * @param evaluationRecord
	 * @return 失败：-1；成功：1
	 */
	int insert(EvaluationRecord evaluationRecord);
	
    /**
     * 
     * 获取全部短信审核记录
     * @author Abu.Tulaike 
     * @param pagenum 当前第几页
     * @param url 待跳转的action的封装URL
     * @return 成功：Page实体；失败：null
     * @since JDK 1.6
     */
    Page getAllPageData(String pagenum,String url);
    
    
    /**
     * 
     * 获取待审核短信审核记录
     * @author Abu.Tulaike 
     * @param pagenum 当前第几页
     * @param url 待跳转的action的封装URL
     * @return 成功：Page实体；失败：null
     * @since JDK 1.6
     */
    Page getUnauditedPageData(String pagenum,String url);
    
    /**
     * 获取所有待审核的短信数量
     * @return 成功：待审核的短信数量值；失败：null
     */
    Integer getCountUnaudited();
}
