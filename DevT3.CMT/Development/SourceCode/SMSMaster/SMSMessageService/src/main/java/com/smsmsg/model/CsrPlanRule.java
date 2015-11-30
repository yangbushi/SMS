package com.smsmsg.model;


import java.util.Date;

import com.sms.model.EvaluationPlan;
import com.smsmsg.model.CheckRules.CheckRule;
/**
 * 满意度测评计划规则
 * @author Gaoliang.Zhou
 * 隐藏规则：门诊抽查,住院全发
 */
public class CsrPlanRule {
	/**
	 * 可配置的测评计划规则
	 */
	private EvaluationPlan evaluationPlan;
	/**
	 * 同一患者不重复发送短信的天数
	 * 单位：天
	 */
	private int daysOfNoRepeat;
	/**
	 * 就诊完成后(出院后)发送消息的时间间隔
	 * 单位：分钟
	 */
	private int minutesOfSendAfterVisit;
	/**
	 * 抽查规则
	 */
	private CheckRules checkRules;
	
	
	public CsrPlanRule(EvaluationPlan evaluationPlan) {
		this.setEvaluationPlan(evaluationPlan);
		
		setDaysOfNoRepeat(7);
		setMinutesOfSendAfterVisit(5);
		checkRules = new CheckRules(this);
	}


	public int getDaysOfNoRepeat() {
		return daysOfNoRepeat;
	}

	public void setDaysOfNoRepeat(int daysOfNoRepeat) {
		this.daysOfNoRepeat = daysOfNoRepeat;
	}

	public int getMinutesOfSendAfterVisit() {
		return minutesOfSendAfterVisit;
	}

	public void setMinutesOfSendAfterVisit(int minutesOfSendAfterVisit) {
		this.minutesOfSendAfterVisit = minutesOfSendAfterVisit;
	}

	
	
	public CheckRule getMatchedCheckRule(Date nowDate){
		return checkRules.getMatchedCheckRule(nowDate);
	}


	public EvaluationPlan getEvaluationPlan() {
		return evaluationPlan;
	}


	public void setEvaluationPlan(EvaluationPlan evaluationPlan) {
		this.evaluationPlan = evaluationPlan;
	}
	
	
	
}
