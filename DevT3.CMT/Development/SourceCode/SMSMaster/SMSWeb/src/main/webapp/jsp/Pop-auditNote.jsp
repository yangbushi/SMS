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
		<div class="data">
			<p><label>患者姓名：</label><span class="bold">${EvaluationRecord.name }</span></p>
			<p><label>联系电话：</label><span class="orange">${EvaluationRecord.mobilePhoneNum }</span></p>
			<p><label>回复时间：</label>${EvaluationRecord.mobilePhoneNum }</p>
			<p><label>就诊信息：</label>${EvaluationRecord.visitStartDateTime }就诊于${EvaluationRecord.visitOrgName }${EvaluationRecord.hisDeptName }${EvaluationRecord.doctorName }</p>
			<p><label>回复内容：</label>${EvaluationRecord.smsReplyContent }</p>
		</div>
		<div>
			<p class="bold">满意度</p>
			<ul class="evaluateList clearfix">
				<li class="active"><span class="orange">0</span>-非常满意</li>
				<li><span class="orange">1</span>-基本满意</li>
				<li><span class="orange">2</span>-一般</li>
				<li class="yawp">不满意</li>
			</ul>
			<ul class="adviseList clearfix">
				<li><span class="orange">3</span>-对医疗技术不满意</li>
				<li><span class="orange">4</span>-对服务态度不满意</li>
				<li><span class="orange">5</span>-对医院环境不满意</li>
				<li><span class="orange">6</span>-收费不合理</li>
				<li><span class="orange">7</span>-对医护人员不满意</li>
				<li><span class="orange">8</span>-其他的不满意</li>
			</ul>
			<script type="text/javascript">
				$(".evaluateList li").click(function(){
					$(".evaluateList li").removeClass("active")
					$(this).addClass("active")
					if ($(this).hasClass("yawp")) {
						$(".adviseList").show();
					}else{
						$(".adviseList").hide();
					}
				});
				$(".adviseList li").click(function(){
					$(this).toggleClass("active");
				});
			</script>
			<ul class="formList">
				<li>
					<label>其他的要求或建议</label>
					<div>
						<input type="text">
					</div>
				</li>
				<li>
					<label>最满意的医生护士</label>
					<div>
						<input type="text">
					</div>
				</li>
				<li>
					<label>最不满意的医生护士</label>
					<div>
						<input type="text">
					</div>
				</li>
			</ul>
		</div>
		<div class="pop-btn">
			<input class="btn btn-blue" type="button" value="保存">
			<input class="btn btn-white ml20 colseWindow" type="button" value="取消">
		</div>
	</div>
	<script type="text/javascript">
		var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
		$(".colseWindow").click(function(){
			parent.layer.close(index);
		});
	</script>
</body>
</html>