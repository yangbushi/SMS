package com.sms.service.impl;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.sms.enums.EnumCsrPlanStatus;
import com.sms.service.EvaluationPlanService;

/**
 * 项目名称：SMSMybatis 类全名:com.sms.service.impl.EvaluationPlanServiceImplTest 类描述：
 * 创建人：Ding.Yuanyuan 创建时间：2015-11-18 下午4:43:10 修改备注：
 */
 @RunWith(SpringJUnit4ClassRunner.class)
 //= extends SpringJUnit4ClassRunner
 @ContextConfiguration(locations = { "classpath:spring.xml",
 "classpath:spring-mybatis.xml" })
public class EvaluationPlanServiceImplTest {
	@Autowired
	private EvaluationPlanService evaluationPlanService;
	private static final Logger logger = Logger
			.getLogger(EvaluationPlanServiceImplTest.class);

	/**
	 * 
	 * testGetEvaluationPlans:(按照枚举数组去查询符合条件的EvaluationPlan). <br/>
	 * TODO(参数：枚举数组；返回：List<EvaluationPlan>).<br/>
	 * 
	 * @author Ding.Yuanyuan
	 */
	@Test
	public void testGetEvaluationPlans() {
		try {
			EnumCsrPlanStatus[] enumCsrPlanStatuss = new EnumCsrPlanStatus[] {
					EnumCsrPlanStatus.UnExecute, EnumCsrPlanStatus.Executing };
			logger.info(JSON.toJSONStringWithDateFormat(evaluationPlanService
					.getEvaluationPlans(enumCsrPlanStatuss),
					"yyyy-MM-dd HH:mm:ss"));
		} catch (Exception e) {
			logger.error(e.toString());
		}
	}
}
