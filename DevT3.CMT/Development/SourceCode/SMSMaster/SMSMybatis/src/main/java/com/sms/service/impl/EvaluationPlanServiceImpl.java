package com.sms.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sms.dao.EvaluationPlanDao;
import com.sms.enums.EnumCsrPlanStatus;
import com.sms.model.EvaluationPlan;
import com.sms.model.Page;
import com.sms.service.EvaluationPlanService;

@Service("EvaluationPlanService")
public class EvaluationPlanServiceImpl implements EvaluationPlanService{
	private static final Logger logger = Logger
			.getLogger(PersonMasterIndexServiceImpl.class);
	
	@Autowired
	private EvaluationPlanDao evaluationPlanDao;
	
	
	@Override
	public List<EvaluationPlan> getAll() {
		return evaluationPlanDao.getAll();
	}

	@Override
	public EvaluationPlan selectByPrimaryKey(Integer id) {
		return evaluationPlanDao.selectByPrimaryKey(id);
	}

	@Override
	public int insert(EvaluationPlan evaluationPlan) {
		return evaluationPlanDao.insert(evaluationPlan);
	}

	@Override
	public int update(EvaluationPlan evaluationPlan) {
		return evaluationPlanDao.updateByPrimaryKey(evaluationPlan);
	}

	@Override
	public int delete(Integer id) {
		return evaluationPlanDao.deleteByPrimaryKey(id);
	}
	
    /** 
     * 根据计划状态集合获取计划集合
     * @param enumCsrPlanStatuss  
     * @return
     */
	@Override
	public List<EvaluationPlan> getEvaluationPlans(
			EnumCsrPlanStatus[] enumCsrPlanStatuss) {
		List<EvaluationPlan> list = new ArrayList<EvaluationPlan>();
		Integer[] Status = new Integer[]{-1,-1,-1,-1,-1};
		for (int i = 0;i < enumCsrPlanStatuss.length;i++){
			Status[i] = enumCsrPlanStatuss[i].getValue();
		}
		try{
			list = evaluationPlanDao.getEvaluationPlans(Status);
		}catch(Exception e){
			logger.error(e.toString());
			return null;
		}finally{}
		return list;
	}
	  
	/**
	 * 
	 * testWrongInsert:(事务回滚相关测试，先插入正确数据，后插入错误数据，测试是否全部回滚). <br/> 
	 * TODO(参数1：可以正常insert的实体；参数2：insert会冲突的实体).<br/> 
	 * @param 可以正常insert的实体EvaluationPlan
	 * @param insert会报错的实体EvaluationPlan
	 * @author Ding.Yuanyuan
	*/
	@Override
	public int test(EvaluationPlan evaluationPlan1,
			EvaluationPlan evaluationPlan2) {
		evaluationPlanDao.insert(evaluationPlan1);
		evaluationPlanDao.insert(evaluationPlan2);
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(EvaluationPlan evaluationPlan) {
		int updateResult = 0;
		try{
			updateResult = evaluationPlanDao.updateByPrimaryKeySelective(evaluationPlan);
		}catch(Exception e){
			logger.error(e.toString());
		}
		return updateResult;
	}

    @Override
    public Page getPageData(String pagenum, String url)
    {
        int totalrecord=evaluationPlanDao.getTotalrecord();
        if(pagenum==null){
            //用户访问第一页
            Page page =new Page(totalrecord, 1);
            @SuppressWarnings("rawtypes")
            List list =evaluationPlanDao.getPageItems(page.getStartindex(), page.getPagesize());
            page.setUrl(url);
            page.setList(list);
            return page;
            
        }else{
            //用户指定访问页码
            Page page =new Page(totalrecord, Integer.parseInt(pagenum));
            @SuppressWarnings("rawtypes")
            List list=evaluationPlanDao.getPageItems(page.getStartindex(), page.getPagesize());
            page.setUrl(url);
            page.setList(list);
            return page;
            
        }
    }
	

}
