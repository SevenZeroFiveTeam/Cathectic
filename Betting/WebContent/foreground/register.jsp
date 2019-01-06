<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>投注站</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css">
<script src="${pageContext.request.contextPath}/static/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.js"></script>
<script>
layui.use(['element','form','carousel','layer'], function(){
	  var element = layui.element
	  ,form=layui.form
	  ,carousel=layui.carousel,
	  layer=layui.layer; //导航的hover效果、二级菜单等功能，需要依赖element模块
	  
	//常规轮播
	  carousel.render({
	    elem: '#test1'
	    ,width: '100%'
	   	,height: '80px'
	    ,interval: 5000
	  });
	  //监听具体玩法的点击事件
	  element.on('nav(demo)', function(elem){
	    //console.log(elem)
	    layer.msg(elem.text());
	  });
	  
	});
	
	function loadimage() {
		document.getElementById("randImage").src = "image.jsp?" + Math.random();
	}
</script> 
</head>
<body>
	<div class="layui-container">
	<jsp:include page="${pageContext.request.contextPath}/foreground/common/head.jsp"></jsp:include>
 
	<jsp:include page="${pageContext.request.contextPath}/foreground/common/navbar.jsp"></jsp:include>
	
	<div class="layui-fluid" style="background-color:#f2f2f2;height: 750px;">
		<div class="layui-row" style="height: 30px;"></div>
		<div class="layui-row" >
			<div class="layui-col-sm2"></div>
			<div class="layui-col-sm9" style="background-color:white;margin-left: 100px;height: 100%;">
				<div>
					<ul class="layui-nav" lay-filter="" style="background-color: white;">
					  <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/foreground/login.jsp"><font color="black">登录</font></a></li>
					  <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/foreground/register.jsp"><font color="black">注册</font></a></li>
					 </ul>
				</div>
				<hr class="layui-bg-orange">
				<form class="layui-form" action="">
					<div  style="margin-left: 35px;margin-top: 20px;">
					  <div class="layui-form-item" >
					    <label class="layui-form-label">呢称</label>
					    <div class="layui-input-block">
					      <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入用户名" class="layui-input"style="width: 250px;">
					    </div>
					  </div>
					  <div class="layui-form-item" style="margin-top: 20px;">
					    <label class="layui-form-label">密码</label>
					    <div class="layui-input-block">
					      <input type="text" name="username" lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input" style="width: 250px;">
					    </div>
					  </div>
					  <div class="layui-form-item" style="margin-top: 20px;">
					    <label class="layui-form-label">确认密码</label>
					    <div class="layui-input-block">
					      <input type="text" name="username" lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input" style="width: 250px;">
					    </div>
					  </div>
					  <div class="layui-form-item" style="margin-top: 20px;">
					    <label class="layui-form-label">手机号</label>
					    <div class="layui-input-block">
					      <input type="text" name="username" lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input" style="width: 250px;">
					    </div>
					  </div>
					  <div class="layui-form-item" style="margin-top: 20px;">
					    <label class="layui-form-label">验证码</label>
					    <div class="layui-input-inline">
					      <input type="text" name="username" lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input" style="width: 250px;">
					    </div>
					    <div class="layui-form-mid" style="margin-left: 60px;">
					    	<img onclick="javascript:loadimage();" title="换一张试试" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle"></span>
					    </div>
					  </div>
					  <div class="layui-row" style="margin-top: 25px;margin-bottom: 80px;">
						  <button class="layui-btn" style="margin-left: 110px;width: 90px;">立即注册</button>
					  </div>
					</div>
				 </form>
			</div>
			<div class="layui-col-sm1"></div>
		</div>
  
	</div>
	<jsp:include page="${pageContext.request.contextPath}/foreground/common/footer.jsp"></jsp:include> 
	</div>
</body>
</html>