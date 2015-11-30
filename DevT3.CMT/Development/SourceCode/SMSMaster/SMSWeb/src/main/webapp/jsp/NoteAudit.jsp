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
					<li class="active">
						<a class="menu-icon02" href="NoteAudit.jsp">短信审核</a>
					</li>
					<li>
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
				<div class="mainTitle">短信审核</div>
				<div class="mainCon">
				 	<div class="clearfix">
				 		<div class="fl auditMenu">
				 			<a class="active">待审核（110）</a>
				 			<a>全部</a>
				 			<a class="searchMenu">搜索</a>
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
				 					<label>患者姓名</label>
				 					<div>
				 						<input type="text">
				 					</div>
				 				</div>
				 				<div class="row">
				 					<label>手机号</label>
				 					<div>
				 						<input type="text">
				 					</div>
				 				</div>
				 			</li>
				 			<li>
				 				<div class="row">
				 					<label>回复日期</label>
				 					<div>
				 						<select>
				 							<option>未指定</option>
				 						</select>
				 						<input id="start" class="date" type="text">
				 						<input id="end" class="date" type="text">
				 					</div>
				 				</div>
				 			</li>
				 			<li>
				 				<div class="row">
				 					<label>回复内容</label> 
				 					<div>
				 						<input type="text">
				 					</div>
				 				</div>
				 				
				 			</li>
				 			<li>
				 				<div class="row">
				 					<label>审核状态</label>
				 					<div>
				 						<select>
				 							<option>未指定</option>
				 						</select>
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
				 				<th width="115">发送手机号</th>
				 				<th width="90">姓名</th>
				 				<th width="200">就诊医院</th>
				 				<th width="115">就诊科室</th>
				 				<th width="90">接诊医生</th>
				 				<th>回复内容</th>
				 				<th width="125">回复时间</th>
				 				<th width="80">状态</th>
				 			</tr>
				 		</thead>
				 		<tbody>
				 			<tr>
				 				<td>13211111111</td>
				 				<td>王大仙</td>
				 				<td>杭州市第一人民医院</td>
				 				<td>心血管</td>
				 				<td>李莫愁</td>
				 				<td>呵呵哒呵呵哒呵呵哒呵呵哒呵呵哒</td>
				 				<td>2015-09-15 09:25</td>
				 				<td class="state">
				 					<div class="notStarted">
				 						<span class="stateBox">待审核</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td>13211111111</td>
				 				<td>王大仙</td>
				 				<td>杭州市第一人民医院</td>
				 				<td>心血管</td>
				 				<td>李莫愁</td>
				 				<td>呵呵哒呵呵哒呵呵哒呵呵哒呵呵哒</td>
				 				<td>2015-09-15 09:25</td>
				 				<td class="state">
				 					<div class="notStarted">
				 						<span class="stateBox">待审核</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td>13211111111</td>
				 				<td>王大仙</td>
				 				<td>杭州市第一人民医院</td>
				 				<td>心血管</td>
				 				<td>李莫愁</td>
				 				<td>呵呵哒呵呵哒呵呵哒呵呵哒呵呵哒</td>
				 				<td>2015-09-15 09:25</td>
				 				<td class="state">
				 					<div class="over">
				 						<span class="stateBox">已审核</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td>13211111111</td>
				 				<td>王大仙</td>
				 				<td>杭州市第一人民医院</td>
				 				<td>心血管</td>
				 				<td>李莫愁</td>
				 				<td>呵呵哒呵呵哒呵呵哒呵呵哒呵呵哒</td>
				 				<td>2015-09-15 09:25</td>
				 				<td class="state">
				 					<div class="over">
				 						<span class="stateBox">已审核</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td>13211111111</td>
				 				<td>王大仙</td>
				 				<td>杭州市第一人民医院</td>
				 				<td>心血管</td>
				 				<td>李莫愁</td>
				 				<td>呵呵哒呵呵哒呵呵哒呵呵哒呵呵哒</td>
				 				<td>2015-09-15 09:25</td>
				 				<td class="state">
				 					<div class="over">
				 						<span class="stateBox">已审核</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td>13211111111</td>
				 				<td>王大仙</td>
				 				<td>杭州市第一人民医院</td>
				 				<td>心血管</td>
				 				<td>李莫愁</td>
				 				<td>呵呵哒呵呵哒呵呵哒呵呵哒呵呵哒</td>
				 				<td>2015-09-15 09:25</td>
				 				<td class="state">
				 					<div class="over">
				 						<span class="stateBox">已审核</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td>13211111111</td>
				 				<td>王大仙</td>
				 				<td>杭州市第一人民医院</td>
				 				<td>心血管</td>
				 				<td>李莫愁</td>
				 				<td>呵呵哒呵呵哒呵呵哒呵呵哒呵呵哒</td>
				 				<td>2015-09-15 09:25</td>
				 				<td class="state">
				 					<div class="over">
				 						<span class="stateBox">已审核</span>
				 					</div>
				 				</td>
				 			</tr>
				 			<tr>
				 				<td>13211111111</td>
				 				<td>王大仙</td>
				 				<td>杭州市第一人民医院</td>
				 				<td>心血管</td>
				 				<td>李莫愁</td>
				 				<td>呵呵哒呵呵哒呵呵哒呵呵哒呵呵哒</td>
				 				<td>2015-09-15 09:25</td>
				 				<td class="state">
				 					<div class="over">
				 						<span class="stateBox">已审核</span>
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
		var start = {
		    elem: '#start',
		    format: 'YYYY-MM-DD',
		    istime: true,
		    istoday: false,
		    choose: function(datas){
		         end.min = datas; //开始日选好后，重置结束日的最小日期
		         end.start = datas //将结束日的初始值设定为开始日
		    }
		};
		var end = {
		    elem: '#end',
		    format: 'YYYY-MM-DD',
		    istime: true,
		    istoday: false,
		    choose: function(datas){
		        start.max = datas; //结束日选好后，重置开始日的最大日期
		    }
		};
		laydate(start);
		laydate(end);

		$(".ReviewPlan table td").click(function(){
			var _this=$(this);
			if ((_this.hasClass("state") || _this.hasClass("operate")) == false) {
				var table = $('table');
		        var id = $(this).attr('id');
				if (_this.siblings().last().find("div").hasClass("notStarted")) {
					layer.open({
					    type: 2,
					    area: ['410px', '400px'],
					    fix: false, //不固定
					    maxmin: false,
					    title:"审核",
					    content: '<%=path %>/jsp/'+id+'/auditNote.do'
	
					});
				}else{
					openLayer("已评审","Pop-overAudit.jsp","560px","270px");
				}
			}
		});
		function openLayer(tit,src,w,h){
			layer.open({
			    type: 2,
			    area: [w, h],
			    fix: false, //不固定
			    maxmin: false,
			    title:tit,
			    content: src
			});
		}
	</script>
</body>
</html>