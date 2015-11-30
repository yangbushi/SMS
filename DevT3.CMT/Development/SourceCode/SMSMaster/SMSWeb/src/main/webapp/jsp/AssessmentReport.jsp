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
	<script type="text/javascript" src="js/public.js"></script>
</head>
<body>
	<div class="header">
		<a href="">
			<img class="logo" src="images/logo.png">
		</a>
	</div>
	<div class="content">
		<div class="leftsidebar">
			<div>
				<a href="">首页</a>
			</div>
			<div class="fold">
				<a class="active" href="javascript:void(0);">满意度测评</a>
				<ul>
					<li >
						<a class="menu-icon01" href="ReviewPlan.jsp">测评计划</a>
					</li>
					<li>
						<a class="menu-icon02" href="NoteAudit.jsp">短信审核</a>
					</li>
					<li class="active">
						<a class="menu-icon03" href="AssessmentReport.jsp">测评报告</a>
					</li>
					<li>
						<a class="menu-icon04" href="EventProcess.jsp">事件处理</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="main">
			<div class="ReviewPlan">
				 <div class="mainTitle">测评计划</div>
				 <div class="mainCon">
				 	<div class="clearfix">
				 		<div class="fl">
				 			<input class="btn refresh" type="button" value="刷新">
				 		</div>
				 		<div class="page">
				 			<span class="page-left"></span>
				 			<select>
				 				<option>1 / 100</option>
				 			</select>
				 			<span class="page-right"></span>
				 		</div>
				 	</div>
				 	<table class="table mt20">
				 		<thead>
				 			<tr>
				 				<th>计划名称</th>
				 				<th width="114">计划开始时间</th>
				 				<th width="114">计划结束时间</th>
				 				<th width="114">制定机构</th>
				 				<th width="90">制定人</th>
				 				<th width="100">制定日期</th>
				 				<th width="80">状态</th>
				 			</tr>
				 		</thead>
				 		<tbody>
				 			<tr>
				 				<td><a href="ViewAssessment.html" target="_blank">2015年度第四季度社区卫生所满意度测评</a></td>
				 				<td>2015-10-01</td>
				 				<td>2015-12-31</td>
				 				<td>卫生局</td>
				 				<td>张三</td>
				 				<td>2015-09-15</td>
				 				<td class="state">
				 					<div class="started">
				 						<span class="stateBox">执行中</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td><a href="ViewAssessment.html" target="_blank">2015年度第四季度社区卫生所满意度测评</a></td>
				 				<td>2015-10-01</td>
				 				<td>2015-12-31</td>
				 				<td>卫生局</td>
				 				<td>张三</td>
				 				<td>2015-09-15</td>
				 				<td class="state">
				 					<div class="started">
				 						<span class="stateBox">执行中</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td><a href="ViewAssessment.html" target="_blank">2015年度第四季度社区卫生所满意度测评</a></td>
				 				<td>2015-10-01</td>
				 				<td>2015-12-31</td>
				 				<td>卫生局</td>
				 				<td>张三</td>
				 				<td>2015-09-15</td>
				 				<td class="state">
				 					<div class="over">
				 						<span class="stateBox">已完成</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td><a href="ViewAssessment.html" target="_blank">2015年度第四季度社区卫生所满意度测评</a></td>
				 				<td>2015-10-01</td>
				 				<td>2015-12-31</td>
				 				<td>卫生局</td>
				 				<td>张三</td>
				 				<td>2015-09-15</td>
				 				<td class="state">
				 					<div class="over">
				 						<span class="stateBox">已完成</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td><a href="ViewAssessment.html" target="_blank">2015年度第四季度社区卫生所满意度测评</a></td>
				 				<td>2015-10-01</td>
				 				<td>2015-12-31</td>
				 				<td>卫生局</td>
				 				<td>张三</td>
				 				<td>2015-09-15</td>
				 				<td class="state">
				 					<div class="over">
				 						<span class="stateBox">已完成</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td><a href="ViewAssessment.html" target="_blank">2015年度第四季度社区卫生所满意度测评</a></td>
				 				<td>2015-10-01</td>
				 				<td>2015-12-31</td>
				 				<td>卫生局</td>
				 				<td>张三</td>
				 				<td>2015-09-15</td>
				 				<td class="state">
				 					<div class="over">
				 						<span class="stateBox">已完成</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td><a href="ViewAssessment.html" target="_blank">2015年度第四季度社区卫生所满意度测评</a></td>
				 				<td>2015-10-01</td>
				 				<td>2015-12-31</td>
				 				<td>卫生局</td>
				 				<td>张三</td>
				 				<td>2015-09-15</td>
				 				<td class="state">
				 					<div class="over">
				 						<span class="stateBox">已完成</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td><a href="ViewAssessment.html" target="_blank">2015年度第四季度社区卫生所满意度测评</a></td>
				 				<td>2015-10-01</td>
				 				<td>2015-12-31</td>
				 				<td>卫生局</td>
				 				<td>张三</td>
				 				<td>2015-09-15</td>
				 				<td class="state">
				 					<div class="over">
				 						<span class="stateBox">已完成</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td><a href="ViewAssessment.html" target="_blank">2015年度第四季度社区卫生所满意度测评</a></td>
				 				<td>2015-10-01</td>
				 				<td>2015-12-31</td>
				 				<td>卫生局</td>
				 				<td>张三</td>
				 				<td>2015-09-15</td>
				 				<td class="state">
				 					<div class="over">
				 						<span class="stateBox">已完成</span>
				 					</div>
				 				</td>
				 			</tr>
				 		</tbody>
				 	</table>
				 </div>
			</div>
		</div>
	</div>
</body>
</html>