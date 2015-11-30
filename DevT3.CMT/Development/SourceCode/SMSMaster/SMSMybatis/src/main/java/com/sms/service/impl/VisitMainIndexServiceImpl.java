package com.sms.service.impl;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sms.dao.EvaluationRecordDao;
import com.sms.dao.PersonMasterIndexDao;
import com.sms.dao.VisitMainIndexDao;
import com.sms.model.EvaluationPlan;
import com.sms.model.PersonMasterIndex;
import com.sms.model.VisitMainIndex;
import com.sms.service.VisitMainIndexService;
@Service("VisitMainIndexService")
public class VisitMainIndexServiceImpl implements VisitMainIndexService{
	private static final Logger logger = Logger
			.getLogger(VisitMainIndexServiceImpl.class);
	@Autowired
	private VisitMainIndexDao visitMainIndexDao;
	
	@Autowired
	private PersonMasterIndexDao personMasterIndexDao;
	
	@Autowired
	private EvaluationRecordDao evaluationRecordDao;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<VisitMainIndex> getVisitMainIndexs(
			EvaluationPlan evaluationPlan, Date startCheckDateTime,
			Date endCheckDateTime, Date currentDateTime, int delayMinutes,
			int topNumber) {
		List<VisitMainIndex> list= new ArrayList<VisitMainIndex>();
		
		//将EvaluationPlan的EvaluateOrgCode拆分成String[]
		String[] codeList = evaluationPlan.getEvaluateOrgCode().split(";");
		
		//计算delayTime
		int delayTime = delayMinutes * 60;
		
		//构造空字符串用于比较
		String emptyString = "''";
		
		//将所有变量加入到Map中
		@SuppressWarnings("rawtypes")
		Map map = new HashMap();
		map.put("codeList",codeList);

		
		map.put("startCheckDateTime",startCheckDateTime);
		map.put("endCheckDateTime",endCheckDateTime);
		map.put("currentDateTime",currentDateTime);
		map.put("delayTime",delayTime);
		map.put("topNumber",topNumber);
		map.put("emptyString",emptyString);
		
		try{
			list = visitMainIndexDao.getVisitMainIndexs(map);
			String mobileNumber = "";
			if (list.size() > 0){
				mobileNumber = personMasterIndexDao.getMobileNumberByIdentityNo(list.get(0).getIdentityNo());
			}else{}
			for (int i = 0;i < list.size();i++){
				PersonMasterIndex personMasterIndex = new PersonMasterIndex();
				personMasterIndex.setMobileNumber(mobileNumber);
				list.get(i).setPersonMasterIndex(personMasterIndex);
			}
		}catch(Exception e){
			logger.error(e.toString());
			return null;
		}finally{}
		
		return list;
	}

	@Override
	public List<VisitMainIndex> getLimitDaysNoRepeatVisit(
			List<VisitMainIndex> screenedVisitMainIndexs, Date currentDateTime,
			int daysOfNoRepeat) {
		//获取时间集合
		List<Date> dateList = new ArrayList<Date>();
		try{
			for (int i = 0;i < screenedVisitMainIndexs.size();i++){
				dateList.add(evaluationRecordDao.getSendDateByIdentityNo(screenedVisitMainIndexs.get(i).getIdentityNo()));
			}
		}catch(Exception e){
			logger.error(e.toString());
			return null;
		}finally{}
		
		//设置第一个时间点
		Calendar cal1=Calendar.getInstance();
		cal1.setTime(currentDateTime);
		
		//按照时间差筛选
		List<VisitMainIndex> list = screenedVisitMainIndexs;
		int listSize = dateList.size();
		for (int i = listSize - 1;i >= 0;i--){
			if (dateList.get(i) != null){
				//设置第二个时间点
				Calendar cal2 = Calendar.getInstance();
				cal1.setTime(dateList.get(i));
				if (getDaysBetween(cal1,cal2) < daysOfNoRepeat){
					list.remove(i);
				}else{}
			}
		}
		return list;
	}
	
	/**
	 * 计算两个时间点之间的天数差
	 * @param 第一个时间点d1
	 * @param 第二个时间点d2
	 * @return 天数差int
	 */
	public static int getDaysBetween (Calendar d1, Calendar d2) {
        if (d1.after(d2)) { 
            java.util.Calendar swap = d1;
            d1 = d2;
            d2 = swap;
        }
        int days = d2.get(Calendar.DAY_OF_YEAR) - d1.get(Calendar.DAY_OF_YEAR);
        int y2 = d2.get(Calendar.YEAR);
        if (d1.get(Calendar.YEAR) != y2) {
            d1 = (Calendar) d1.clone();
            do {
                days += d1.getActualMaximum(Calendar.DAY_OF_YEAR);//得到当年的实际天数
                d1.add(Calendar.YEAR, 1);
            } while (d1.get(Calendar.YEAR) != y2);
        }
        return days;
    }

	@Override
	public List<VisitMainIndex> getAll() {
		// TODO Auto-generated method stub
		return visitMainIndexDao.getAll();
	}
	
}
