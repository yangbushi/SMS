package com.smsmsg.service.biz;

import java.util.List;

import com.sms.enums.EnumCsrPlanStatus;
import com.sms.model.EvaluationPlan;

public interface SmsMsgBizInte {
	public List<EvaluationPlan> getEvaluationPlans(EnumCsrPlanStatus[] enumCsrPlanStatuss);

	public int update(EvaluationPlan d);
}
