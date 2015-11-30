<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm" %> 
<%@ taglib prefix="st" uri="http://www.springframework.org/tags" %>
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
	<link rel="stylesheet" type="text/css" href="lib/laydate/need/laydate.css">
	<link rel="stylesheet" type="text/css" href="lib/zTree/css/zTreeStyle/zTreeStyle.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="lib/laydate/laydate.js"></script>
	<script type="text/javascript" src="lib/zTree/js/jquery.ztree.core-3.5.js"></script>
	<script type="text/javascript" src="lib/zTree/js/jquery.ztree.excheck-3.5.js"></script>
	<script type="text/javascript" >
		var zTree;
		var demoIframe;

		var setting = {
			check: {
				enable: true
			},
// 			async : {    
//             enable : true,   
//             url : "http://localhost:8080/SMSWeb/jsp/getHCO.do", // Ajax 获取数据的 URL 地址
//             },
			data: {
				simpleData: {
					enable: true
				}
			}
		};
		
	</script>
		<script  type="text/javascript">
		function reshow()
		{
		window.opener.location.reload();
		}
</script>
</head>
<body onUnload="javascrip:reshow();">
<fm:form id="add"  modelAttribute="evaluationPlan" >
	<div class="pop-window pop-newPlan">
		<ul class="formList">
			<li>
				<label>计划名称</label>
				<div>
					<input type="text" name="planName">
				</div>
			</li>
			<li>
				<label>开始日期</label>
				<div>
					<input id="start" class="date" type="text" name=start >
				</div>
			</li>
			<li>
				<label>结束日期</label>
				<div>
					<input id="end" class="date" type="text" name="end" >
				</div>
			</li>
			
			<li>
				<label>测评对象</label>
				<div>
					<select class="select_hos" name="select_hos">
<%--						<option>请选择测评对象</option>--%>
						<option value="所有医院">所有医院</option>
						<option value="市属医院">市属医院</option>
						<option value="社区卫生服务中心">社区卫生服务中心</option>
						<option value="指定医院" class="select_hospital">指定医院...</option>
					</select>
					<div>
						<ul id="tree" class="ztree" style="width:260px; overflow:auto;"></ul>
					</div>
				</div>
			</li>
			
			<script type="text/javascript">
			   //加载ztree
				function onloadZTree(){
				    var ztreeNodes;
				   $.ajax( {
				     async : true, //是否异步
				     cache : false, //是否使用缓存
				     type : 'post', //请求方式,post
				     dataType : "json", //数据传输格式
				     url : "<%=request.getContextPath() %>/jsp/getHCO.do ", //请求链接
				     error : function() {
				       alert('亲，网络有点不给力呀！');
				     },
				     success : function(data) {
				     //alert(data);
				       ztreeNodes = eval( "["+data+"]" ); //将string类型转换成json对象
				       $.fn.zTree.init($( "#tree"), setting, ztreeNodes);
				     },
				     error : function() {
				       alert('亲，网络有点不给力呀！');
				     }
				   });
				}
  
				$(".select_hos").change(function(s){
					if ($(".select_hos option:selected").hasClass("select_hospital")) {
						onloadZTree();
					}else{
						$("#tree").html("");
					}
				});
			</script>
			<li>
				<input type="hidden"  id="evaluateScope" name="evaluateScope" >
				<input type="hidden"  id="evaluateOrgCode" name="evaluateOrgCode" >
				<input type="hidden"  id="evaluateOrgName" name="evaluateOrgName" >
			</li>
			<li class="noteNumber">
				<label>每天发送短信数量</label>
				<input type="text" name="daySmsCountLimit">
			</li>
			<li>
				<input type="hidden"  name="creatorName" value="张三">
				<input type="hidden"  name="createDateTime" value="<%=new Date()%>">
			</li>
			
		</ul>
		<div class="pop-btn">
			<input id="btnSave" class="btn btn-blue " type="button" value="保存" >
			<input class="btn btn-white ml20 colseWindow" type="button" value="取消">
		</div>
	</div>

	<script type="text/javascript">
		var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
		
		$('#btnSave').click(function(){
			var select_hos = document.all["select_hos"];
			var scopeSelected = select_hos.options[select_hos.selectedIndex].value;
			alert(scopeSelected);
			var inputScope = document.getElementById("evaluateScope");
			inputScope.setAttribute("value", scopeSelected);
			
			var zTree = $.fn.zTree.getZTreeObj("tree");
			if(scopeSelected == "指定医院") {
				nodes = zTree.getCheckedNodes(),
				treeNode = nodes[0];
				if (nodes.length == 0) {
				   alert( "亲，请先选择一个分类!" );
				   return;
				}
				var strCode = "";
				var strName ="";
				for(i=0;i<nodes.length;i++) {
					if(nodes[i].children){
						continue;
					}
					strCode = strCode+nodes[i].code+';';
					strName = strName+nodes[i].name+';';
				}
				var inputCode = document.getElementById("evaluateOrgCode");
				var inputName = document.getElementById("evaluateOrgName");
				inputCode.setAttribute("value", strCode);
				inputName.setAttribute("value", strName);			
			}
		     

		      //alert(scope);


				$.ajax({
				    url:"<%=path%>/jsp/add.do", 
                    type:"POST",
                    //传送请求数据
                    data: $('#add').serialize(),
                    success: function (strValue) { //登录成功后返回的数据
                        //根据返回值进行状态显示
                        if (strValue == "success") {//注意是True,不是true
                        	parent.$('#newResult').val("success");
               		 		parent.layer.close(index);
                        }
                        else {
                            alert("保存失败");
                        }
                    }
                });
		});
		
		
		$(".colseWindow").click(function(){
			parent.layer.close(index);
		});

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
	</script>
	</fm:form>
</body>
</html>