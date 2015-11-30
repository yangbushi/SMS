package com.sms.service;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.sms.model.EvaluationPlan;
import com.sms.service.EvaluationPlanService;

/**
 * 
 * 项目名称：SMSMybatis 类全名:com.sms.service.EvaluationPlanServiceTest 类描述： 测试
 * EvaluationPlanService相关接口，主要包括数据库操作的测试 创建人：DingYuanyuan 创建时间：2015-11-19
 * 上午10:56:40 修改备注：
 */
@RunWith(SpringJUnit4ClassRunner.class)
// = extends SpringJUnit4ClassRunner
@ContextConfiguration(locations = { "classpath:spring.xml" })
public class EvaluationPlanServiceTest {
	private static final Logger logger = Logger
			.getLogger(EvaluationPlanServiceTest.class);
	@Autowired
	private EvaluationPlanService evaluationPlanService;

	@Test
	public void testFindAll() {
		try {
			List<EvaluationPlan> list = evaluationPlanService.getAll();
			logger.info(JSON.toJSONStringWithDateFormat(list,
					"yyyy-MM-dd HH:mm:ss"));
		} catch (Exception e) {
			logger.error(e.toString());
		}
	}

	/**
	 * 
	 * testWrongInsert:(事务回滚相关测试，先插入正确数据，后插入错误数据，测试是否全部回滚). <br/>
	 * TODO(参数1：可以正常insert的数据；参数2：insert会冲突的数据).<br/>
	 * 
	 * @author Ding.Yuanyuan
	 */
	// @Test
	public void testWrongInsert() {
		try {
			EvaluationPlan evaluationPlan = new EvaluationPlan();
			evaluationPlan.setPlanId(104);
			evaluationPlan.setPlanName("test" + 101);
			evaluationPlan.setStartDateTime(new Date());
			evaluationPlan.setEndDateTime(new Date());
			evaluationPlan.setEvaluateOrgCode("1212" + 1 + ";2112" + 1);
			evaluationPlan.setEvaluateOrgName("医院" + 1 + ";诊所" + 1);
			evaluationPlan.setCreatorName("阿饼");
			evaluationPlan.setCreateDateTime(new Date());
			evaluationPlan.setStatus(0);
			evaluationPlan.setCancelPersonName("abing");
			EvaluationPlan evaluationPlan1 = new EvaluationPlan();
			// evaluationPlan1 = evaluationPlan;
			evaluationPlan1.setPlanId(1);
			logger.info(evaluationPlanService.test(evaluationPlan,
					evaluationPlan1));
		} catch (Exception e) {
			logger.error(e.toString());
		}
	}

	// @Test
	public void testInsert() {
		try {
			EvaluationPlan evaluationPlan = new EvaluationPlan();
			for (int i = 103; i < 104; i++) {
				evaluationPlan.setPlanId(i);
				evaluationPlan.setPlanName("test" + i);
				evaluationPlan.setStartDateTime(new Date());
				evaluationPlan.setEndDateTime(new Date());
				evaluationPlan.setEvaluateOrgCode("1212" + i + ";2112" + i);
				evaluationPlan.setEvaluateOrgName("医院" + i + ";诊所" + i);
				evaluationPlan.setCreatorName("阿饼");
				evaluationPlan.setCreateDateTime(new Date());
				evaluationPlan.setStatus(2);
				evaluationPlan.setCancelPersonName("abing");
				logger.info(evaluationPlanService.insert(evaluationPlan));
			}
		} catch (Exception e) {
			logger.error(e.toString());
		}
	}

	// @Test
	// public void testFindById() {
	// EvaluationPlan evaluationPlan = evaluationPlanService
	// .selectByPrimaryKey(20);
	// logger.info(JSON.toJSONStringWithDateFormat(evaluationPlan,
	// "yyyy-MM-dd HH:mm:ss"));
	// }

	// @Test
	// public void testUpdate() {
	// EvaluationPlan evaluationPlan = evaluationPlanService
	// .selectByPrimaryKey(20);
	// evaluationPlan.setPlanName("test44");
	// logger.info(evaluationPlanService.update(evaluationPlan));
	// }

	// @Test
	// public void testDelete() {
	// logger.info(evaluationPlanService.delete(1));
	// }

}
