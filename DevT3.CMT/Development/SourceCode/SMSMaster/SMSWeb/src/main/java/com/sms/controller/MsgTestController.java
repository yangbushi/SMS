package com.sms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sms.service.EvaluationPlanService;

@Controller
public class MsgTestController {
	@SuppressWarnings("unused")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Autowired
	private EvaluationPlanService evaluationPlanService;
	/**
	 * 测试代码
	 * 模拟短信Post请求
	 * @author Gaoliang.Zhou
	 * 
	 */
	public class MsgResult {

		private String descMessage;
		private String resultCode;

		public MsgResult() {
		}

		public String getDescMessage() {
			return descMessage;
		}

		public void setDescMessage(String descMessage) {
			this.descMessage = descMessage;
		}

		public String getResultCode() {
			return resultCode;
		}

		public void setResultCode(String resultCode) {
			this.resultCode = resultCode;
		}
	}
	@RequestMapping(value = "/Json", method = RequestMethod.POST)
	public @ResponseBody
	MsgResult getShopInJSON() {

		MsgResult result = new MsgResult();
		result.setDescMessage("Delayed short message has been submitted.");
		result.setResultCode("0");
		return result;
	}
	/*
	@RequestMapping(value = "/jsp/testAdd", method = RequestMethod.POST)
	public @ResponseBody
	String insertAjax(HttpServletRequest request, EvaluationPlan evaluationPlan)
			throws ParseException {

		String start = request.getParameter("start");
		String end = request.getParameter("end");
		if(start == null || "".equals(start) || end == null || "".equals(end)){
			return "fail";
		}
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date startDate = dateFormat.parse(start);
		Date endDate = dateFormat.parse(end);
		System.out.println(startDate + "<-->" + endDate);
		evaluationPlan.setStartDateTime(startDate);
		evaluationPlan.setEndDateTime(endDate);
		evaluationPlan.setEnumCsrPlanStatus(EnumCsrPlanStatus.UnExecute);

		int result = evaluationPlanService.insert(evaluationPlan);
		System.out.println("执行evaluationPlan添加操作,test");
		System.out.println(request.getParameter("evaluateOrgName"));
		
		return result > 0 ? "success" : "fail";
	}*/
}
