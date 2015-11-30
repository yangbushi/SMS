package com.smsmsg.service.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;

import com.sms.enums.EnumCsrPlanStatus;
import com.sms.model.EvaluationPlan;
import com.sms.service.EvaluationPlanService;

public class SmsMsgBiz implements SmsMsgBizInte {
	@Autowired
	private EvaluationPlanService evaluationPlanService;

	public List<EvaluationPlan> getEvaluationPlans(EnumCsrPlanStatus[] enumCsrPlanStatuss) {
		List<EvaluationPlan> d = evaluationPlanService.getEvaluationPlans(enumCsrPlanStatuss);
		return d;
	}

	public int update(EvaluationPlan d) {
		return evaluationPlanService.update(d);
	}
}
