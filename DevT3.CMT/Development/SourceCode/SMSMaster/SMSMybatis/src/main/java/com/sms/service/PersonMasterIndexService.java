package com.sms.service;

import com.sms.model.PersonMasterIndex;

public interface PersonMasterIndexService {
	/**
	 * 根据个人标识获取个人档案
	 * 对象内需要填充字段：
	 * 	IDENTITY_NO
	 * 	CONTACT_MOBILE
	 * @param identityNo
	 * @return 失败：null；成功：对象PersonMasterIndex
	 */
	PersonMasterIndex getPersionMasterIndexByIndentityNo(String identityNo);
}
