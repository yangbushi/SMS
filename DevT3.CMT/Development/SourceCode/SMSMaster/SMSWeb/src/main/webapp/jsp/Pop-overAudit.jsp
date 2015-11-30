<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
	<title>杭州卫生云信息平台</title>
	<link rel="stylesheet" type="text/css" href="css/base.css">
	<link rel="stylesheet" type="text/css" href="css/layout.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
	<div class="pop-viewPlan pop-auditNote">
		<div>
			<p><label>患者姓名：</label><span class="bold">徐佳</span></p>
			<p><label>联系电话：</label><span class="orange">13778898678</span></p>
			<p><label>回复时间：</label>2015-11-13 15:31</p>
			<p><label>就诊信息：</label>2014-11-13 13:32就诊于杭州市第一人民医院心内科门诊宋部飞</p>
			<p><label>回复内容：</label><span class="orange">0</span>，对宋部飞医生和周琪医生最满意</p>
			<p class="mt20"><label>满意度：</label><span class="orange">5</span>-对医院环境不满意</p>
			<p><label>其他的要求或建议：</label></p>
			<p><label>最满意的医生护士：</label></p>
			<p><label>最不满意的医生护士：</label></p>
		</div>
	</div>
</body>
</html>