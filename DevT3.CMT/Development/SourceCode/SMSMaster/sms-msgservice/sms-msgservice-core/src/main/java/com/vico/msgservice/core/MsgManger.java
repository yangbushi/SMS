package com.vico.msgservice.core;

import com.vico.msgservice.core.model.JsonHttpPostRequest;
import com.vico.msgservice.core.model.JsonSendMsg;
import com.vico.msgservice.core.util.HttpClientHelper;
import com.vico.msgservice.core.util.JsonHelper;



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
