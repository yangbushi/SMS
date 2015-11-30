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
	<div class="content ViewAssessment">
		<div class="baseInfo">
			<div class="title">
				<span class="tips">已完成</span>
				<p>2015年第3季度社区卫生所满意度测评</p>
			</div>
			<div class="time">
				<p><label>测评日期：</label><span class="bold">2015-07-01</span> 至  <span class="bold">2015-09-30</span></p>
				<p><label>测评对象：</label><span class="bold">所有社区卫生服务中心</span></p>
			</div>
		</div>
		<div class="dataForm">
			<div class="title"><a href="">整体报告</a> > <a href="">杭州市第一人民医院</a> > 儿科门诊</div>
			<div class="dataList">
				<ul class="clearfix">
					<li>
						<div>
							<label>总计发送短信</label>
							<p>3233424</p>
						</div>
					</li>
					<li>
						<div>
							<label>回复</label>
							<p>565343</p>
						</div>
					</li>
					<li>
						<div>
							<label>回复率</label>
							<p>11.42%</p>
						</div>
					</li>
					<li>
						<div>
							<label>满意度</label>
							<p>34534</p>
						</div>
					</li>
					<li>
						<div>
							<label>回复满意率</label>
							<p>91.42%</p>
						</div>
					</li>
				</ul>
			</div>
			<div class="dataTable">
				<table class="table">
					<thead>
						<tr>
							<th>单位</th>
							<th width="70">测评数</th>
							<th width="70">回复数</th>
							<th width="70">回复率%</th>
							<th width="70">满意数</th>
							<th width="70">回复</br>满意率%</th>
							<th width="80">对服务态度</br>不满意</th>
							<th width="80">对医护人员</br>不满意</th>
							<th width="80">对医院环境</br>不满意</th>
							<th width="80">对医疗技术</br>不满意</th>
							<th width="60">收费</br>不合理</th>
							<th width="60">其他</br>不满意</th>
							<th>最满意的</br>医生护士</th>
							<th>最不满意的</br>医生护士</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>杭州市第一人民医院</td>
							<td>2312</td>
							<td>12313</td>
							<td>2342</td>
							<td>345</td>
							<td>98.40</td>
							<td>34</td>
							<td>45</td>
							<td>8</td>
							<td>0</td>
							<td>11</td>
							<td>5</td>
							<td>陈亚平<span class="orange">+2</span>，罗萍</td>
							<td>陆雅佩</td>
						</tr>
						<tr>
							<td>杭州市第一人民医院</td>
							<td>2312</td>
							<td>12313</td>
							<td>2342</td>
							<td>345</td>
							<td>98.40</td>
							<td>34</td>
							<td>45</td>
							<td>8</td>
							<td>0</td>
							<td>11</td>
							<td>5</td>
							<td>陈亚平<span class="orange">+2</span>，罗萍</td>
							<td>陆雅佩</td>
						</tr>
						<tr>
							<td>杭州市第一人民医院</td>
							<td>2312</td>
							<td>12313</td>
							<td>2342</td>
							<td>345</td>
							<td>98.40</td>
							<td>34</td>
							<td>45</td>
							<td>8</td>
							<td>0</td>
							<td>11</td>
							<td>5</td>
							<td>陈亚平<span class="orange">+2</span>，罗萍</td>
							<td>陆雅佩</td>
						</tr>
						<tr>
							<td>杭州市第一人民医院</td>
							<td>2312</td>
							<td>12313</td>
							<td>2342</td>
							<td>345</td>
							<td>98.40</td>
							<td>34</td>
							<td>45</td>
							<td>8</td>
							<td>0</td>
							<td>11</td>
							<td>5</td>
							<td>陈亚平<span class="orange">+2</span>，罗萍</td>
							<td>陆雅佩</td>
						</tr>
						<tr>
							<td>杭州市第一人民医院</td>
							<td>2312</td>
							<td>12313</td>
							<td>2342</td>
							<td>345</td>
							<td>98.40</td>
							<td>34</td>
							<td>45</td>
							<td>8</td>
							<td>0</td>
							<td>11</td>
							<td>5</td>
							<td>陈亚平<span class="orange">+2</span>，罗萍</td>
							<td>陆雅佩</td>
						</tr>
						<tr>
							<td>杭州市第一人民医院</td>
							<td>2312</td>
							<td>12313</td>
							<td>2342</td>
							<td>345</td>
							<td>98.40</td>
							<td>34</td>
							<td>45</td>
							<td>8</td>
							<td>0</td>
							<td>11</td>
							<td>5</td>
							<td>陈亚平<span class="orange">+2</span>，罗萍</td>
							<td>陆雅佩</td>
						</tr>
						<tr>
							<td>杭州市第一人民医院</td>
							<td>2312</td>
							<td>12313</td>
							<td>2342</td>
							<td>345</td>
							<td>98.40</td>
							<td>34</td>
							<td>45</td>
							<td>8</td>
							<td>0</td>
							<td>11</td>
							<td>5</td>
							<td>陈亚平<span class="orange">+2</span>，罗萍</td>
							<td>陆雅佩</td>
						</tr>
						<tr>
							<td>杭州市第一人民医院</td>
							<td>2312</td>
							<td>12313</td>
							<td>2342</td>
							<td>345</td>
							<td>98.40</td>
							<td>34</td>
							<td>45</td>
							<td>8</td>
							<td>0</td>
							<td>11</td>
							<td>5</td>
							<td>陈亚平<span class="orange">+2</span>，罗萍</td>
							<td>陆雅佩</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>