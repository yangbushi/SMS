package com.smsmsg.service;


import com.smsmsg.model.JsonHttpPostRequest;
import com.smsmsg.model.JsonSendMsg;
import com.smsmsg.util.HttpClientHelper;
import com.smsmsg.util.JsonHelper;

public class MsgManger {
	public static final String RES_OF_SEND_MSG_SUCCESS = "0";
	
	private static final HttpClientHelper  httpClientHelper = new HttpClientHelper();
	public static JsonHttpPostRequest SendMessage(JsonSendMsg jsonSendMsg){
		String jsonSendMsgString = JsonHelper.tranObjectToJsonString(jsonSendMsg);
		if(jsonSendMsgString == null){
			return null;
		}

		String jsonHttpPostResultString = httpClientHelper.sendPost(jsonSendMsg.getPostUrl(), jsonSendMsgString);
		JsonHttpPostRequest jsonHttpPostRequest = JsonHelper.tranJsonStringToObject(jsonHttpPostResultString, JsonHttpPostRequest.class);
		if(jsonHttpPostRequest == null){
			return null;
		}
		return  jsonHttpPostRequest;
	}
}
