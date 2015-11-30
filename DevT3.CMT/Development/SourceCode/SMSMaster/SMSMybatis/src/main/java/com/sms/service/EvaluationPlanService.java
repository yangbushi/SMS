package com.sms.service;

import java.util.List;

import com.sms.enums.EnumCsrPlanStatus;
import com.sms.model.EvaluationPlan;
import com.sms.model.Page;

public interface EvaluationPlanService {

	List<EvaluationPlan> getAll();
	
	EvaluationPlan selectByPrimaryKey(Integer id);
	
    int insert(EvaluationPlan evaluationPlan);
    
    int update(EvaluationPlan evaluationPlan);
    
    int updateByPrimaryKeySelective(EvaluationPlan evaluationPlan);
    
    int delete(Integer id);
    
    /**
     * 
     * getPageData:实现分页. <br/>  
     * @author Abu.Tulaike 
     * @param pagenum 当前第几页
     * @param url 待跳转的action的封装URL
     * @return Page实体
     * @since JDK 1.6
     */
    Page getPageData(String pagenum,String url);
    /** 
     * 根据计划状态集合获取计划集合
     * @param enumCsrPlanStatuss  
     * @return 失败:null;成功：list对象（长度可能为0）
     */
    List<EvaluationPlan> getEvaluationPlans(EnumCsrPlanStatus[] enumCsrPlanStatuss);
    
    /**
	 * 
	 * testWrongInsert:(事务回滚相关测试，先插入正确数据，后插入错误数据，测试是否全部回滚). <br/> 
	 * @param 可以正常insert的实体EvaluationPlan
	 * @param insert会报错的实体EvaluationPlan
	 * TODO(参数1：可以正常insert的实体；参数2：insert会冲突的实体).<br/> 
	 * @author Ding.Yuanyuan
	 */
    int test(EvaluationPlan evaluationPlan1,EvaluationPlan evaluationPlan2);
    
}
