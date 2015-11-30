<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'listEvPlan.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<h3>测评计划</h3>
  	<a href="<%=path %>/createEvPlan.jsp">新建</a><br/>
	<table border="1" width="70%">
   		<tr>
   			<td>计划名称</td>
   			<td>计划开始时间</td>
   			<td>计划结束时间</td>
   			<td>制定机构</td>
   			<td>制定人</td>
   			<td>制定日期</td>
   			<td>状态</td>
   			<td>操作</td>
   		</tr>
   		<c:forEach items="${EvPlanlist}" var="EvaluationPlan">
   		<tr>
   			<td>${EvaluationPlan.planName }</td>
   			<td>${EvaluationPlan.startDateTime }</td>
   			<td>${EvaluationPlan.endDateTime }</td>
   			<td>${EvaluationPlan.createOrgName }</td>
   			<td>${EvaluationPlan.creatorName }</td>
   			<td>${EvaluationPlan.createDateTime }</td>
   			<td>${EvaluationPlan.status }</td>
   			<td><a href="<%=path %>/showOneEvPlan.do?id=${EvaluationPlan.planId }">ShowOne</a> <a href="<%=path %>/updateEvPlan.do?id=${EvaluationPlan.planId }">Update</a> <a href="<%=path %>/deleteEvPlan.do?id=${EvaluationPlan.planId }">Delete</a></td>
   		</tr>
   		</c:forEach>
   </table>
  </body>
</html>
