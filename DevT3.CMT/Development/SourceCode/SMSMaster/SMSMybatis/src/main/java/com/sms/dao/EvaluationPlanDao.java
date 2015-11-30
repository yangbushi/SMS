package com.sms.dao;

import java.util.List;

import com.sms.model.EvaluationPlan;

public interface EvaluationPlanDao {
    int deleteByPrimaryKey(Integer planId);

    int insert(EvaluationPlan record);

    int insertSelective(EvaluationPlan record);

    EvaluationPlan selectByPrimaryKey(Integer planId);

    int updateByPrimaryKeySelective(EvaluationPlan record);

    int updateByPrimaryKey(EvaluationPlan record);
    
    List<EvaluationPlan> getAll();

    List<EvaluationPlan> getPageItems(Integer page,Integer size);
    
    List<EvaluationPlan> getEvaluationPlans(Integer[] enumCsrPlanStatuss);

    int getTotalrecord();
}