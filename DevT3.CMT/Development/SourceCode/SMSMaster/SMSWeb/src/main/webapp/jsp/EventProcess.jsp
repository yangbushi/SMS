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
	<link rel="stylesheet" type="text/css" href="lib/layer/skin/layer.css">
	<link rel="stylesheet" type="text/css" href="lib/laydate/need/laydate.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/public.js"></script>
	<script type="text/javascript" src="lib/layer/layer.js"></script>
	<script type="text/javascript" src="lib/laydate/laydate.js"></script>
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
					<li>
						<a class="menu-icon01" href="ReviewPlan.jsp">测评计划</a>
					</li>
					<li>
						<a class="menu-icon02" href="NoteAudit.jsp">短信审核</a>
					</li>
					<li>
						<a class="menu-icon03" href="AssessmentReport.jsp">测评报告</a>
					</li>
					<li class="active">
						<a class="menu-icon04" href="EventProcess.jsp">事件处理</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="main">
			<div class="ReviewPlan EventProcess">
				<div class="mainTitle">事件处理</div>
				<div class="mainCon">
				 	<div class="clearfix">
				 		<div class="fl auditMenu">
				 			<a class="active">待审核（110）</a>
				 			<a>待交办（20）</a>
				 			<a>待办理 （4）</a>
				 			<a>待回访 （123）</a>
				 			<a>全部</a>
				 			<a class="searchMenu">搜索</a>
				 			<a><span class="focus"></span>关注的事件</a>
				 		</div>
				 		<script type="text/javascript">
				 			$(".auditMenu a").click(function(){
				 				$(".auditMenu a").removeClass("active");
				 				$(this).addClass("active");
				 				if ($(this).hasClass("searchMenu")) {
				 					$(".search").show();
				 					$(".table").hide();
				 				}else{
				 					$(".search").hide();
				 					$(".table").show();
				 				}
				 			});
				 		</script>
				 		<div class="page">
				 			<span class="page-left"></span>
				 			<select>
				 				<option>1 / 100</option>
				 			</select>
				 			<span class="page-right"></span>
				 		</div>
				 	</div>
				 	<div class="search">
				 		<ul class="clearfix">
				 			<li class="clearfix">
				 				<div class="row">
				 					<label>事件编号</label>
				 					<div>
				 						<input type="text">
				 					</div>
				 				</div>
				 				<div class="row">
				 					<label>反映人</label>
				 					<div>
				 						<input type="text">
				 					</div>
				 				</div>
				 			</li>
				 			<li class="clearfix">
				 				<div class="row">
				 					<label>来电号码</label>
				 					<div>
				 						<input type="text">
				 					</div>
				 				</div>
				 			</li>
				 			<li class="clearfix">
				 				<div class="row">
				 					<label>事件状态</label>
				 					<div>
				 						<select>
				 							<option></option>
				 						</select>
				 					</div>
				 				</div>
				 				<div class="row">
				 					<label>事件来源</label>
				 					<div>
				 						<select>
				 							<option>未指定</option>
				 						</select>
				 					</div>
				 				</div>
				 			</li>
				 			<li>
				 				<div class="row">
				 					<label>反映日期</label>
				 					<div>
				 						<select>
				 							<option>未指定</option>
				 						</select>
				 						<input id="start01" class="date" type="text">
				 						<input id="end01" class="date" type="text">
				 					</div>
				 				</div>
				 			</li>
				 			<li class="clearfix">
				 				<div class="row">
				 					<label>反映目的</label>
				 					<div>
				 						<select>
				 							<option>投诉</option>
				 						</select>
				 					</div>
				 				</div>
				 				<div class="row">
				 					<label>内容分类</label>
				 					<div>
				 						<select>
				 							<option>服务态度</option>
				 						</select>
				 					</div>
				 				</div>
				 			</li>
				 			<li>
				 				<div class="row">
				 					<label>受理日期</label>
				 					<div>
				 						<select>
				 							<option>未指定</option>
				 						</select>
				 						<input id="start02" class="date" type="text">
				 						<input id="end02" class="date" type="text">
				 					</div>
				 				</div>
				 			</li>
				 			<li>
				 				<div class="row">
				 					<label>承办单位</label> 
				 					<div>
				 						<select>
				 							<option></option>
				 						</select>
				 					</div>
				 				</div>
				 				
				 			</li>
				 			<li>
				 				<div class="row">
				 					<label>交办日期</label>
				 					<div>
				 						<select>
				 							<option>未指定</option>
				 						</select>
				 						<input id="start03" class="date" type="text">
				 						<input id="end03" class="date" type="text">
				 					</div>
				 				</div>
				 			</li>
				 		</ul>
				 		<div class="search-btn">
				 			<input class="btn btn-blue" type="button" value="搜索">
				 			<input class="btn btn-white ml20" type="button" value="重置条件">
				 		</div>
				 		<p class="tips">以下结果符合搜索条件：回复内容：医院是新的 + 审核状态：未审核</p>

				 		<!-- 搜索结果为空 ； hide：隐藏-->
				 		<div class="searchNull">
				 			<img src="images/null.png">
				 			<span>未找到匹配的搜索结果</span>
				 		</div>

				 	</div>
				 	<table class="table mt10">
				 		<thead>
				 			<tr>
				 				<th width="90">编号</th>
				 				<th width="60">来源</th>
				 				<th>反映时间</th>
				 				<th width="60">反映人</th>
				 				<th width="110">来电号码</th>
				 				<th width="70">反映目的 </th>
				 				<th width="70">内容分类</th>
				 				<th width="70">交办人 </th>
				 				<th>承办单位  </th>
				 				<th>经办时间 </th>
				 				<th width="80">状态 </th>
				 			</tr>
				 		</thead>
				 		<tbody>
				 			<tr>
				 				<td>151113-11 </td>
				 				<td>短信</td>
				 				<td>2015-11-13 15:32</td>
				 				<td>金小文 </td>
				 				<td>13832451678</td>
				 				<td>投诉</td>
				 				<td>服务态度</td>
				 				<td>卫生局</td>
				 				<td>杭州市第一人民医院</td>
				 				<td>2015-11-13 09:21</td>
				 				<td class="state">
				 					<div class="notStarted">
				 						<span class="stateBox">待受理</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td>151113-11 </td>
				 				<td>短信</td>
				 				<td>2015-11-13 15:32</td>
				 				<td>金小文 </td>
				 				<td>13832451678</td>
				 				<td>投诉</td>
				 				<td>服务态度</td>
				 				<td>卫生局</td>
				 				<td>杭州市第一人民医院</td>
				 				<td>2015-11-13 09:21</td>
				 				<td class="state">
				 					<div class="state-icon01">
				 						<span class="stateBox">待交办</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td>151113-11 </td>
				 				<td>短信</td>
				 				<td>2015-11-13 15:32</td>
				 				<td>金小文 </td>
				 				<td>13832451678</td>
				 				<td>投诉</td>
				 				<td>服务态度</td>
				 				<td>卫生局</td>
				 				<td>杭州市第一人民医院</td>
				 				<td>2015-11-13 09:21</td>
				 				<td class="state">
				 					<div class="state-icon02">
				 						<span class="stateBox">待办理</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td>151113-11 </td>
				 				<td>短信</td>
				 				<td>2015-11-13 15:32</td>
				 				<td>金小文 </td>
				 				<td>13832451678</td>
				 				<td>投诉</td>
				 				<td>服务态度</td>
				 				<td>卫生局</td>
				 				<td>杭州市第一人民医院</td>
				 				<td>2015-11-13 09:21</td>
				 				<td class="state">
				 					<div class="state-icon03">
				 						<span class="stateBox">待回访</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td>151113-11 </td>
				 				<td>短信</td>
				 				<td>2015-11-13 15:32</td>
				 				<td>金小文 </td>
				 				<td>13832451678</td>
				 				<td>投诉</td>
				 				<td>服务态度</td>
				 				<td>卫生局</td>
				 				<td>杭州市第一人民医院</td>
				 				<td>2015-11-13 09:21</td>
				 				<td class="state">
				 					<div class="over">
				 						<span class="stateBox">已结案</span>
				 					</div>
				 				</td>
				 			</tr>
				 		</tbody>
				 	</table>
				 </div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		// 时间控件
		var start01 = {
		    elem: '#start01',
		    format: 'YYYY-MM-DD',
		    istime: true,
		    istoday: false,
		    choose: function(datas){
		         end.min = datas; //开始日选好后，重置结束日的最小日期
		         end.start = datas //将结束日的初始值设定为开始日
		    }
		};
		var end01 = {
		    elem: '#end01',
		    format: 'YYYY-MM-DD',
		    istime: true,
		    istoday: false,
		    choose: function(datas){
		        start.max = datas; //结束日选好后，重置开始日的最大日期
		    }
		};
		laydate(start01);
		laydate(end01);

		var start02 = {
		    elem: '#start02',
		    format: 'YYYY-MM-DD',
		    istime: true,
		    istoday: false,
		    choose: function(datas){
		         end.min = datas; //开始日选好后，重置结束日的最小日期
		         end.start = datas //将结束日的初始值设定为开始日
		    }
		};
		var end02 = {
		    elem: '#end02',
		    format: 'YYYY-MM-DD',
		    istime: true,
		    istoday: false,
		    choose: function(datas){
		        start.max = datas; //结束日选好后，重置开始日的最大日期
		    }
		};
		laydate(start02);
		laydate(end02);

		var start03 = {
		    elem: '#start03',
		    format: 'YYYY-MM-DD',
		    istime: true,
		    istoday: false,
		    choose: function(datas){
		         end.min = datas; //开始日选好后，重置结束日的最小日期
		         end.start = datas //将结束日的初始值设定为开始日
		    }
		};
		var end03 = {
		    elem: '#end03',
		    format: 'YYYY-MM-DD',
		    istime: true,
		    istoday: false,
		    choose: function(datas){
		        start.max = datas; //结束日选好后，重置开始日的最大日期
		    }
		};
		laydate(start03);
		laydate(end03);

		$(".EventProcess table td").click(function(){
			layer.open({
			    type: 2,
			    area: ["680px", "590px"],
			    fix: false, //不固定
			    maxmin: false,
			    title:"事件处理",
			    content: "Pop-eventProcess.html"
			});
		});

	</script>
</body>
</html>