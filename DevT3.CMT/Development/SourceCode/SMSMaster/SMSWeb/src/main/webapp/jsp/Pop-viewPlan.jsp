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
	<link rel="stylesheet" type="text/css" href="<%=path %>/jsp/css/base.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/jsp/css/layout.css">
	<script type="text/javascript" src="<%=path %>/jsp/js/jquery.min.js"></script>
</head>
<body>
<%-- <c:forEach items="${info}" var="info"> --%>
	<div class="pop-window pop-viewPlan">
		<div class="title clearfix">
			${info.planName } 
			<span class="delPlan"></span>
			<span class="editPlan"></span>
		</div>
		<div class="data">
			<c:choose>
				<c:when test="${info.status ==0 }">
					<div class="state state01">
					<!-- 未开始 -->
					<img src="<%=path %>/jsp/images/notStarted.png">
					<p>未开始</p>
					</div>
				</c:when>
				<c:when test="${info.status ==2 }">
					<div class="state state01">
					<!-- 执行中 -->
					<img src="<%=path %>/jsp/images/started.png">
					<p>执行中</p>
					</div>
				</c:when>
				<c:otherwise >
					<div class="state state01">
					<!-- 已完成 -->
					<img src="<%=path %>/jsp/images/over.png">
					<p>已完成</p>
					</div>
				</c:otherwise>
			</c:choose>
			<!-- <div class="state state01">  state01:未开始  state02:执行中  state03:已完成  
				未开始
				<img src="images/notStarted.png">
				执行中
				<img src="images/started.png">
				已完成
				<img src="images/over.png">

				<p>未开始</p>
			</div> -->
			<p><label>测评对象：</label></label><span class="bold">${info.evaluateScope}</span>	 <span class="viewInfo">查看详细</span></p>
				<div class="planInfo">
					<p>${info.evaluateOrgName}</p>
					<%-- <p>${info.}灵隐街道社区卫生服务中心</p> --%>
				</div>
			<p><label>测评日期：</label><span class="bold"><fmt:formatDate value="${info.startDateTime }" pattern="yyyy-MM-dd"/>
			</span> 至  <span class="bold"><fmt:formatDate value="${info.endDateTime }" pattern="yyyy-MM-dd"/></span></p>
			<p><label>每天发送短信数量：</label><span class="count">${info.daySmsCountLimit}</span></p>
		</div>
		<div>
			<p><label>制定机构：</label>${info.createOrgName}</p>
			<p><label>制定人：</label>${info.creatorName}</p>
			<p><label>制定时间：</label><fmt:formatDate value="${info.createDateTime}" pattern="yyyy-MM-dd HH:mm"/></p>
		</div>
	</div>
	<script type="text/javascript">
		$(".viewInfo").click(function(){
			var _this=$(this);
			if (_this.hasClass("active")) {
				_this.removeClass("active").html("查看详细");
			}else{
				_this.addClass("active").html("收起详细");
			}
			$(".planInfo").toggle()
		});

		var index = parent.layer.getFrameIndex(window.name); //获取窗口索引

		$(".editPlan").click(function(){
			parent.newPlan("修改测评计划");
			parent.layer.close(index);
		});
	</script>
<%-- </c:forEach> --%>
</body>
</html>