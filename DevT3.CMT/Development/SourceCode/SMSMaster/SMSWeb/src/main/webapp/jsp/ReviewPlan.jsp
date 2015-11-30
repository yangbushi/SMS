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
	<title>卫生云信息平台</title>
	<link rel="stylesheet" type="text/css" href="css/base.css">
	<link rel="stylesheet" type="text/css" href="css/layout.css">
	<link rel="stylesheet" type="text/css" href="lib/layer/skin/layer.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/public.js"></script>
	<script type="text/javascript" src="lib/layer/layer.js"></script>
	
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
					<li class="active">
						<a class="menu-icon01" href="ReviewPlan.jsp">测评计划</a>
					</li>
					<li>
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
				 <div class="mainTitle">测评计划</div>
				 <div class="mainCon">
				 	<div class="clearfix">
				 		<div class="fl">
				 			<input class="btn newPlan" type="button" value="新建">
				 			<input id="newResult" type="hidden" value="">
				 			<input id="editResult" type="hidden" value="">
				 			<input class="btn refresh" type="button" value="刷新">
				 		</div>
				 		<script type="text/javascript">
				 			$(".newPlan").click(function(){
				 				//iframe层-父子操作
				 				newPlan("新建测评计划");
				 			});
				 			$(".refresh").click(function(){
				 				// 发起ajax请求
				 				location.reload();
				 			});

				 			function newPlan(tit){
				 				layer.open({
				 				    type: 2,
				 				    area: ['410px', '400px'],
				 				    fix: false, //不固定
				 				    maxmin: false,
				 				    title:tit,
				 				    content: 'Pop-newPlan.jsp?v=3',
									end:function(){
										var result = $("#newResult").val();
										if(result == "success"){
											location.reload();
											alert("保存成功");
											
										}
										$('#newResult').val("");
									}
				 				});
				 			}
				 		</script>
				 		<div class="page">
				 		<%
				 			String str = Math.random()+"";
				 		 %>
				 		 ${str}
				 		<c:if test="${list.pagenum>1 }">
  							<a href="${list.url}?pagenum=${list.pagenum-1}&&<%=Math.random() %>"><span class="page-left"></span></a>
  						</c:if>
				 		<select onchange="window.location=this.value;">
				 			<option>${list.pagenum}/ ${list.totalpage}</option>
				 			<c:forEach var="pagenum" begin="${list.startPage }" end="${list.endPage }">
  								<option value="${list.url }?pagenum=${pagenum}">${pagenum}/ ${list.totalpage}</option>
  							</c:forEach>
				 		</select>
				 			<c:if test="${list.pagenum<list.totalpage }">
  								<a href="${list.url }?pagenum=${list.pagenum+1}&&<%=Math.random() %>"><span class="page-right"></span></a>
  							</c:if>
				 			
				 		</div>
				 	</div>
				 	<table class="table">
				 		<thead>
				 			<tr class="testOtherWise" >
				 				<th class="testOtherWise" >计划名称</th>
				 				<th class="testOtherWise"  width="114">计划开始时间</th>
				 				<th class="testOtherWise"  width="114">计划结束时间</th>
				 				<th class="testOtherWise"  width="114">制定机构</th>
				 				<th class="testOtherWise"  width="90">制定人</th>
				 				<th class="testOtherWise"  width="100">制定日期</th>
				 				<th class="testOtherWise"  width="60">状态</th>
				 				<th class="testOtherWise"  width="130">操作</th>
				 			</tr>
				 		</thead>
				 		<tbody>
				 		<c:forEach items="${list.list}" var="eval_Plan" varStatus="num">
				 			<tr id="${eval_Plan.planId}" >
				 				<td>${eval_Plan.planName } </td>
				 				<td><fmt:formatDate value="${eval_Plan.startDateTime }" pattern="yyyy-MM-dd"/></td>
				 				<td><fmt:formatDate value="${eval_Plan.endDateTime }" pattern="yyyy-MM-dd"/></td>
				 				<td>${eval_Plan.createOrgName }</td>
				 				<td>${eval_Plan.creatorName }</td>
				 				<td><fmt:formatDate value="${eval_Plan.createDateTime }" pattern="yyyy-MM-dd"/></td>
				 				<td class="state">
				 				<c:choose>
				 					<c:when test="${eval_Plan.status ==1 }"><div class="notStarted">
				 						<span class="stateBox">待执行</span></div>
				 					</c:when>
				 					<c:when test="${eval_Plan.status ==2 }"><div class="started">
				 						<span class="stateBox">执行中</span></div>
				 					</c:when>
				 					<c:when test="${eval_Plan.status ==3 }"><div class="over">
				 						<span class="stateBox">已完成</span></div>
				 					</c:when>
				 					<c:otherwise >
				 						<div class="cancel">
				 						<span class="stateBox">已取消</span>
				 					</div>
				 					</c:otherwise>
				 				</c:choose>
				 					
				 				</td>
				 				<td class="operate">
				 					<c:choose>
				 						<c:when test="${eval_Plan.status ==1}">
				 							<span id="eedit" class="edit  testOtherWise" ></span>
				 							<a class="testOtherWise" href="<%=path %>/jsp/${eval_Plan.planId }/del.do" onclick="return confirm('确定将此记录删除?')"><span class="del"></span></a>
				 						</c:when>
				 						<c:when test="${eval_Plan.status ==2}">
				 							<a class="testOtherWise" href="<%=path %>/jsp/${eval_Plan.planId }/status.do" onclick="return confirm('确定取消该计划吗?')"><span class="stop"></span></a>
				 						</c:when>
				 						<c:when test="${eval_Plan.status ==3}">
				 						</c:when>
				 						<c:when test="${eval_Plan.status ==4}">
				 						</c:when>
				 						<c:otherwise >
				 							<span id="eedit" class="edit  testOtherWise" ></span>
				 							<a class="testOtherWise" href="<%=path %>/jsp/${eval_Plan.planId }/del.do" onclick="return confirm('确定将此记录删除?')"><span class="del"></span></a>
				 						</c:otherwise>
				 					</c:choose>
				 				</td>
				 			</tr>
				 			</c:forEach>
				 			
				 		</tbody>
				 	</table>
				 </div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$('.testOtherWise').click(function(e){
	
			e.stopPropagation(); 
		});
		$(".ReviewPlan table tr ").click(function(e){
			var _this=$(this);
			var table = $('table');
            var id = $(this).attr('id');
			if ((_this.hasClass("state") || _this.hasClass("operate")) == false) {
				layer.open({
				    type: 2,
				    area: ['410px', '400px'],
				    fix: false, //不固定
				    maxmin: false,
				    title:"查看测评计划",
				    content: '<%=path %>/jsp/'+id+'/info.do'

				});
			}
		});
		
		$(".edit").click(function(e){
			var _this=$(this);
			var table = $('table');
            var id = $(e.target).closest('tr',table).attr('id');
			if ((_this.hasClass("state") || _this.hasClass("operate")) == false) {
				layer.open({
				    type: 2,
				    area: ['410px', '400px'],
				    fix: false, //不固定
				    maxmin: false,
				    title:"编辑测评计划",
				    content: '<%=path %>/jsp/'+id+'/edit.do',
					end:function(){
						var result = $("#editResult").val();
						if(result == "success"){
							location.reload();
							alert("保存成功");
							
						}
						$('#editResult').val("");
					}
				});
			}
		});
	</script>
</body>
</html>