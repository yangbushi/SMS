package com.vico.msgservice.core.util;

import java.io.IOException;

import org.apache.log4j.Logger;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import com.alibaba.fastjson.JSON;
import com.sms.util.MybatisConst;


public class JsonHelper {
	private static final ObjectMapper objectMapper = new ObjectMapper();
	private static final Logger logger = Logger.getLogger(JsonHelper.class);
	
	
	public static String tranObjectToJsonString(Object objJson){
		String objJonsString = null;
		try {
		    objJonsString = objectMapper.writeValueAsString(objJson);
			System.out.println(objJonsString);
		} catch (JsonGenerationException e) {
			e.printStackTrace();
			
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		if(objJonsString == null){
			logger.info(JSON
					.toJSONStringWithDateFormat(objJson, MybatisConst.DATETIME_FORMATION_DATE_TIME_SECOND));
			return null;
		}
		return objJonsString;
	}
	
	public static <T> T tranJsonStringToObject(String jsonString,Class<T> tClass){
		T tReturn = null;
		try {
			tReturn = objectMapper.readValue(jsonString, tClass);
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		if(tReturn == null){
			logger.info(JSON
					.toJSONStringWithDateFormat(jsonString, MybatisConst.DATETIME_FORMATION_DATE_TIME_SECOND));
		}
		return tReturn;
	}
}
