/**
 * 
 */
package com.sms.service.impl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sms.dao.PersonMasterIndexDao;
import com.sms.model.PersonMasterIndex;
import com.sms.service.PersonMasterIndexService;
import com.sms.util.MybatisConst;

/**
 * @author Gaoliang.Zhou
 *
 */
@Service("PersonMasterIndexService")
public class PersonMasterIndexServiceImpl implements PersonMasterIndexService {
	private static final Logger logger = Logger
			.getLogger(PersonMasterIndexServiceImpl.class);
	@Autowired
	private PersonMasterIndexDao personMasterIndexDao;
	
	@SuppressWarnings("unused")
	private static MybatisConst mybatisConst = new MybatisConst();
	
	@Override
	public PersonMasterIndex getPersionMasterIndexByIndentityNo(
			String identityNo) {
		PersonMasterIndex personMasterIndex = new PersonMasterIndex();
		try{
			personMasterIndex = personMasterIndexDao.selectByPrimaryKey(identityNo);
		}catch(Exception e){
			logger.error(e.toString());
			return null;
		}
		return personMasterIndex;
	}

}
