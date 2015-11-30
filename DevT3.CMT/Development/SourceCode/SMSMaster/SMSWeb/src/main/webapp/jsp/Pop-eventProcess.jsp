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
	<link rel="stylesheet" type="text/css" href="lib/laydate/need/laydate.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="lib/laydate/laydate.js"></script>
</head>
<body>
	<div class="Pop-eventProcess">
		<ul class="eventList clearfix">
			<li class="active">受理</li>
			<li>交办</li>
			<li>办理</li>
			<li>回访</li>
			<li>结案</li>
		</ul>
		<div class="eventInfo">
			<div class="title clearfix">
				<a class="attention" href="javascript:void(0)">+ 关注</a>
				<p><span>密</span>该事件要求保密处理</p>
				<script type="text/javascript">
					$(".attention").click(function(){
						var _this=$(this);
						if (_this.hasClass("active")) {
							_this.html("+ 关注").removeClass("active")
						}else{
							_this.html("&radic; 已关注").addClass("active")
						}
					});
				</script>
			</div>
			<ul class="infoList clearfix">
				<li>
					<label>事件编号：</label>151113-10	
				</li>
				<li>
					<label>事件来源：</label>短信	
				</li>
				<li>
					<label>反映时间：</label>2015-11-13 15:31	
				</li>
				<li>
					<label>反  映  人：</label>徐佳		
				</li>
				<li>
					<label>来电号码：</label>13778898678	
				</li>
				<li>
					<label>联系电话：</label>13778898678
				</li>
				<li>
					<label>联系地址：</label>不详
				</li>
				<li class="special">
					<label>反映内容：</label>2014-11-13 13:32就诊于杭州市第一人民医院心内科门诊宋部飞，反映内容：5，你们医院平板运动心电图室太难找，指示牌不明确。
				</li>
			</ul>
			<ul class="eventSaveList">
				<li class="hide">
					<div>
						<label>反映目的：</label>
						<span>投诉</span>
					</div>
					<div>
						<label>内容分类：</label>
						<span>其他</span>
					</div>
				</li>
				<li class="hide">
					<div>
						<label>交办情况：</label>
						<span>2015-11-13 16:20  卫生局医政科：请杭州市第一人民医院调查、处理，处理结果望在   2015-11</span>
					</div>
				</li>
				<li class="hide">
					<div>
						<label>办理情况：</label>
						<span> 2015-11-14 09:00 杭州市第一人民医院陈小华：请总务科处理。   2015-11-14 10:46 </span>
					</div>
				</li>
				<li class="hide">
					<div>
						<label>反馈情况：</label>
						<span> 反映人对结果的满意程度：满意。</span>
					</div>
				</li>
				<li class="hide">
					<div>
						<label>回访情况：</label>
						<span>2015-11-15 09:42 卫生局医政科杨明白：联系当事人，表示医院已经联系他并告知将进   行改进。</span>
					</div>
				</li>
			</ul>
		</div>
		<div class="eventSave">
			<img src="images/eventSave.png">
			<p>事件受理成功</p>
			<div class="pop-btn">
				<input class="btn btn-white btn-auto next" type="button" value="办理下一事件">
				<input class="btn btn-white ml20 colseWindow" type="button" value="取消">
			</div>
		</div>
		<div class="event-scope event01">
			<div class="clearfix">
				<label>反映目的：</label>
				<ul class="clearfix">
					<li>咨询</li>
					<li>建议</li>
					<li>投诉</li>
					<li>揭发</li>
					<li>其他</li>
				</ul>
			</div>
			<div class="clearfix">
				<label>内容分类：</label>
				<ul class="clearfix">
					<li>服务态度</li>
					<li>医疗纠纷</li>
					<li>行风纪律</li>
					<li>其他</li>
				</ul>
			</div>
			<script type="text/javascript">
				$(".event01 div li").click(function(){
					var _this=$(this);
					_this.siblings().removeClass("active");
					_this.addClass("active");
				});
			</script>
			<div class="pop-btn">
				<input class="btn btn-blue saveEvent" type="button" value="保存">
				<input class="btn btn-white ml20 colseWindow" type="button" value="取消">
			</div>
		</div>
		<div class="event-scope event02 hide">
			<div class="scope">
				<label>承办单位</label>
				<select>
					<option></option>
				</select>
			</div>
			<div class="scope">
				<label>截止日期</label>
				<input id="time" type="text">
			</div>
			<script type="text/javascript">
				var time = {
				    elem: '#time',
				    format: 'YYYY-MM-DD',
				    istime: true,
				    istoday: false
				};
				laydate(time);
			</script>
			<div class="pop-btn">
				<input class="btn btn-blue saveEvent" type="button" value="交办">
				<input class="btn btn-white ml20 colseWindow" type="button" value="取消">
			</div>
		</div>
		<div class="event-scope event03 hide">
			<div class="scope">
				<label>办理情况</label>
				<p class="alt">2015-11-14 09:00杭州市第一人民医院陈小华：请总务科处理。</p>
				<textarea></textarea>
			</div>
			<div class="special">
				<p class="title">~~~~	如果事情办结，请填写		~~~~</p>
				<div class="scope">
					<label>反映人对结果的满意程度</label>
					<select>
						<option></option>
					</select>
				</div>
				<div class="scope">
					<label>反映人对事件的补充意见</label>
					<input type="text">
				</div>
			</div>
			<div class="pop-btn">
				<input class="btn btn-blue saveEvent" type="button" value="办理完成">
				<input class="btn btn-white ml20 colseWindow" type="button" value="取消">
			</div>
		</div>
		<div class="event-scope event04 hide">
			<div class="scope">
				<label>回访情况</label>
				<textarea></textarea>
			</div>
			<div class="pop-btn">
				<input class="btn btn-blue saveEvent" type="button" value="保存并结案">
				<input class="btn btn-white btn-auto ml20" type="button" value="保存但不结案，后续还要回访">
				<input class="btn btn-white ml20 colseWindow" type="button" value="取消">
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(".saveEvent").click(function(){
			$(this).parents(".event-scope").addClass("hide");
			$(".eventSave").show();
		});
		$(".next").click(function(){
			$(".eventSave").hide();
			$(".eventSaveList li").removeClass("hide");
			$(".event-scope").removeClass("hide");
		});

		var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
		$(".colseWindow").click(function(){
			parent.layer.close(index);
		});
	</script>
</body>
</html>