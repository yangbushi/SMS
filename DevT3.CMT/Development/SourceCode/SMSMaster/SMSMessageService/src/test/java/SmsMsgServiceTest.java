import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;


import com.alibaba.fastjson.JSON;
import com.sms.model.EvaluationPlan;
import com.sms.service.EvaluationPlanService;

//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = { "classpath:service-spring.xml" })
public class SmsMsgServiceTest {
	private static final Logger logger = Logger.getLogger(SmsMsgServiceTest.class);
	@Autowired
	private EvaluationPlanService evaluationPlanService;

//	@Test
	public void testFindAll() {
		List<EvaluationPlan> list = evaluationPlanService.getAll();
		logger.info(JSON.toJSONStringWithDateFormat(list, "yyyy-MM-dd HH:mm:ss"));
	}

	// @Test
	public void testInsert() {
		EvaluationPlan evaluationPlan = new EvaluationPlan();
		for (int i = 1; i < 24; i++) {
			evaluationPlan.setPlanId(i);
			evaluationPlan.setPlanName("test" + i);
			evaluationPlan.setStartDateTime(new Date());
			evaluationPlan.setEndDateTime(new Date());
			evaluationPlan.setEvaluateOrgCode("1212" + i + ";2112" + i);
			evaluationPlan.setEvaluateOrgName("医院" + i + ";诊所" + i);
			evaluationPlan.setCreatorName("阿饼");
			evaluationPlan.setCreateDateTime(new Date());
			evaluationPlan.setStatus(0);
			logger.info(evaluationPlanService.insert(evaluationPlan));
		}
	}

	// @Test
	public void testFindById() {
		EvaluationPlan evaluationPlan = evaluationPlanService.selectByPrimaryKey(20);
		logger.info(JSON.toJSONStringWithDateFormat(evaluationPlan, "yyyy-MM-dd HH:mm:ss"));
	}

	// @Test
	public void testUpdate() {
		EvaluationPlan evaluationPlan = evaluationPlanService.selectByPrimaryKey(20);
		evaluationPlan.setPlanName("test44");
		logger.info(evaluationPlanService.update(evaluationPlan));
	}

	// @Test
	public void testDelete() {
		logger.info(evaluationPlanService.delete(1));
	}
}
