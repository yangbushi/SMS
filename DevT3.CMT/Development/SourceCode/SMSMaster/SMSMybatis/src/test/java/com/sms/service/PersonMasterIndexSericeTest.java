package com.sms.service;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;

/**       
 * 项目名称：SMSMybatis  
 * 类全名:com.sms.service.PersonMasterIndexSericeTest    
 * 类描述： 测试个人档案主索引Service  
 * 创建人：Ding.Yuanyuan
 * 创建时间：2015-11-19 下午1:47:35    
 * 修改备注：        
 */

@RunWith(SpringJUnit4ClassRunner.class)
//= extends SpringJUnit4ClassRunner
@ContextConfiguration(locations = { "classpath:spring.xml"})
public class PersonMasterIndexSericeTest {
	private static final Logger logger = Logger
			.getLogger(PersonMasterIndexSericeTest.class);
	
	@Autowired
	private PersonMasterIndexService personMasterIndexService;
	
	@Test
	public void testGetPersionMasterIndexByIndentityNo(){
		try{
		    logger.info(JSON.toJSON(personMasterIndexService.getPersionMasterIndexByIndentityNo("123456199010109876")));
		}catch(Exception e){
			logger.error(e.toString());
		}
	}
}


