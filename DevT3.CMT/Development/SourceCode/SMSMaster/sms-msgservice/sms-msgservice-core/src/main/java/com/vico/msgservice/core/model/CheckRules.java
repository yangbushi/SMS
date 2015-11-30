package com.vico.msgservice.core.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.sms.util.MybatisConst;

/**
 * 抽查规则
 * @author Gaoliang.Zhou
 *
 */
public class CheckRules {
	private CsrPlanRule csrPlanRule;
	private List<CheckRule> checkRules = new ArrayList<CheckRule>();
	private List<CheckRule> defaultCheckRules = Arrays.asList(
			new CheckRule("7:0:0","7:59:59",2),
			new CheckRule("8:0:0","8:59:59",4),
			new CheckRule("9:0:0","9:59:59",5),
			new CheckRule("10:0:0","10:59:59",6),
			new CheckRule("11:0:0","11:59:59",5),
			new CheckRule("12:0:0","12:59:59",2),
			new CheckRule("13:0:0","13:59:59",3),
			new CheckRule("14:0:0","14:59:59",4),
			new CheckRule("15:0:0","15:59:59",5),
			new CheckRule("16:0:0","16:59:59",4),
			new CheckRule("17:0:0","17:59:59",2),
			new CheckRule("18:0:0","18:59:59",1),
			new CheckRule("19:0:0","19:59:59",1),
			new CheckRule("20:0:0","20:59:59",1),
			new CheckRule("21:0:0","21:59:59",1),
			new CheckRule("22:0:0","22:59:59",1)
			);
	
	/**
	 * 获取比重和
	 */
	public int getWeightAnd() {
		int weightAnd = 0;
		for (CheckRule rule : checkRules) {
			weightAnd += rule.msgWeight;
		}
		return weightAnd;
	}

	public void add(CheckRule rule) {
		// TODO 如果时间段有交叉就不添加
		if (!checkRules.contains(rule)) {
			checkRules.add(rule);
		}

	}

	public void remove(CheckRule rule) {
		if (checkRules.contains(rule)) {
			checkRules.remove(rule);
		}
	}

	/**
	 * 抽查规则先定死
	 * 
	 * @throws ParseException
	 */
	public CheckRules(CsrPlanRule csrPlanRule) {
		this.csrPlanRule = csrPlanRule;
		for (CheckRule checkRule : defaultCheckRules) {
			this.add(checkRule);
		}
	}

	public CheckRule getMatchedCheckRule(Date nowDateTime) {
		for (CheckRule checkRule : checkRules) {
			if (CompareDateTime(checkRule.getEndCheckDateTime(nowDateTime),
					nowDateTime) >= 0
					&& CompareDateTime(
							checkRule.getStartCheckDateTime(nowDateTime),
							nowDateTime) < 0) {
				return checkRule;
			}
		}
		return null;
	}

	/**
	 * 比较日期时间的时间部分，即比较小时:分钟:秒的部分
	 * 
	 * @param firstDate
	 * @param secondDate
	 * @return
	 */
	private int CompareDateTime(Date firstDate, Date secondDate) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("HHmmss");
		String firstTimeString = dateFormat.format(firstDate);
		long fristTime = Long.parseLong(firstTimeString);
		String secondeTimeString = dateFormat.format(secondDate);
		long secondTime = Long.parseLong(secondeTimeString);
		if (fristTime - secondTime > 0) {
			return 1;
		} else if (fristTime - secondTime < 0) {
			return -1;
		} else {
			return 0;
		}
	}

	private Date montageDateTime(Date date, String timeFormatString) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				MybatisConst.DATETIEM_FORMAT_DATE);
		String dateFormatString = dateFormat.format(date);
		String dateTimeFormatString = String.format("%s %s", dateFormatString,
				timeFormatString);
		SimpleDateFormat dateTimeFormat = new SimpleDateFormat(
				MybatisConst.DATETIME_FORMATION_DATE_TIME_SECOND);
		try {
			return dateTimeFormat.parse(dateTimeFormatString);
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}

	public class CheckRule {

		/**
		 * 开始抽查日期时间，不关注日期
		 */
		private String startCheckTime;
		/**
		 * 截至抽查日期时间，不关注日期
		 */
		private String endCheckTime;
		/**
		 * 消息占比
		 */
		private int msgWeight;

		public CheckRule(String startCheckTimeDate, String endCheckTimeDate,
				int msgWeight) {
			this.startCheckTime = startCheckTimeDate;
			this.endCheckTime = endCheckTimeDate;
			this.msgWeight = msgWeight;
		}

		/**
		 * 获取该条规则抽查时间段内需要发送的短信的数量
		 * 
		 * @param dayMsgCountLimit
		 * @return
		 */
		public int getMsgWeightNumber(int dayMsgCountLimit) {
			return this.msgWeight * dayMsgCountLimit / getWeightAnd();
		}

		/**
		 * 获取当前时间所在抽查规则的时间段 - 开始时间
		 * 
		 * @param nowDateTime
		 * @return
		 */
		public Date getStartCheckDateTime(Date nowDateTime) {
			return montageDateTime(nowDateTime, this.startCheckTime);
		}

		/**
		 * 获取当前时间所在抽查规则的时间段 - 截至时间
		 * 
		 * @param nowDateTime
		 * @return
		 */
		public Date getEndCheckDateTime(Date nowDateTime) {
			return montageDateTime(nowDateTime, this.endCheckTime);
		}

		/**
		 * 获取就诊主索引表的开始时间 抽查规则开始时间减去延迟时间
		 * 
		 * @param nowDateTime
		 * @return
		 */
		public Date getStartVistitCheckDateTime(Date nowDateTime) {
			Calendar nowCalendar = Calendar.getInstance();
			nowCalendar.add(Calendar.MINUTE,
					csrPlanRule.getMinutesOfSendAfterVisit() * -1);
			return montageDateTime(nowCalendar.getTime(), this.startCheckTime);
		}

		/**
		 * 获取就诊主索引表的截至时间 抽查规则截至时间减去延迟时间
		 * 
		 * @param nowDateTime
		 * @return
		 */
		public Date getEndVisitCheckDateTime(Date nowDateTime) {
			Calendar nowCalendar = Calendar.getInstance();
			nowCalendar.add(Calendar.MINUTE,
					csrPlanRule.getMinutesOfSendAfterVisit() * -1);
			return montageDateTime(nowCalendar.getTime(), this.endCheckTime);
		}

	}
}
