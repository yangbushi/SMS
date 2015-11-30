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
  	<h3>查看测评计划</h3>
		<form>
<!-- 			<input type="hidden" name="id" value="${user.id }"></input> -->
			<table>
				<tr>
					<td>${EvaluationPlan.planName }</td>
					
				</tr>
				<tr>
					<td>
						测评日期： ${EvaluationPlan.startDateTime } 至 ${EvaluationPlan.endDateTime }
					</td>
				</tr>
<%-- 				<tr>
					<td>
						age:
					</td>
					<td>
						<input type="text" name="age" value="${user.age }">
					</td>
				</tr>
				<tr>
					<td>
						address:
					</td>
					<td>
						<input type="text" name="address" value="${user.address }">
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="Update">
					</td>
					<td>
						<input type="reset" value="Reset">
					</td>
				</tr> --%>
			</table>
		</form>
  </body>
</html>
