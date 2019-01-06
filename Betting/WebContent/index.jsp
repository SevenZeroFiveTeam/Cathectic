<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>投注站</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css">
<script src="${pageContext.request.contextPath}/static/layui/layui.js"></script>
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
</script> 
</head>
<body>

 <div class="layui-container">
 
	<jsp:include page="${pageContext.request.contextPath}/foreground/common/head.jsp"></jsp:include>
 
	 <jsp:include page="${pageContext.request.contextPath}/foreground/common/navbar.jsp"></jsp:include>
	 <div class="layui-fluid" style="background-color:#393D49;height: 850px;">
	  	<div class="layui-row" style="height: 30px;"></div>
	  	<div class="layui-row" >
			<div class="layui-col-sm10" style="margin-left: 100px;height: 100%;margin-bottom: 80px;background-color:#2F4056 ">
				<div class="layui-row" style="margin-top: 20px;">
					<div class="layui-col-md3" style="margin-left: 50px;text-align: center;">
						<dl>
							<a href="">
							<dt>
					 		<img src="${pageContext.request.contextPath}/static/images/no4.png">
					 		</dt>
					 		<dd>
					 			<font color="white">北京赛车PK</font><p>
					 			<i><font color="white">BEIJINGPK10</font></i>
					 		</dd>
							</a>
							<span><button class="layui-btn" style="width: 100px;">游戏规则</button></span>
						</dl>
					</div>
					<div class="layui-col-md3" style="margin-left: 50px;text-align: center;">
						<dl>
							<a href="">
							<dt>
					 		<img src="${pageContext.request.contextPath}/static/images/no11.png">
					 		</dt>
					 		<dd>
					 			<font color="white">北京赛车PK</font><p>
					 			<i><font color="white">BEIJINGPK10</font></i>
					 		</dd>
							</a>
							<span><button class="layui-btn" style="width: 100px;">游戏规则</button></span>
						</dl>
					</div>
					<div class="layui-col-md3" style="margin-left: 50px;text-align: center;">
						<dl>
							<a href="">
							<dt>
					 		<img src="${pageContext.request.contextPath}/static/images/no7.png">
					 		</dt>
					 		<dd>
					 			<font color="white">北京赛车PK</font><p>
					 			<i><font color="white">BEIJINGPK10</font></i>
					 		</dd>
							</a>
							<span><button class="layui-btn" style="width: 100px;">游戏规则</button></span>
						</dl>
					</div>
				</div>
				<div class="layui-row" style="margin-top: 20px;">
					<div class="layui-col-md3" style="margin-left: 50px;text-align: center;">
						<dl>
							<a href="">
							<dt>
					 		<img src="${pageContext.request.contextPath}/static/images/no1.png">
					 		</dt>
					 		<dd>
					 			<font color="white">北京赛车PK</font><p>
					 			<i><font color="white">BEIJINGPK10</font></i>
					 		</dd>
							</a>
							<span><button class="layui-btn" style="width: 100px;">游戏规则</button></span>
						</dl>
					</div>
					<div class="layui-col-md3" style="margin-left: 50px;text-align: center;">
						<dl>
							<a href="">
							<dt>
					 		<img src="${pageContext.request.contextPath}/static/images/no5.png">
					 		</dt>
					 		<dd>
					 			<font color="white">北京赛车PK</font><p>
					 			<i><font color="white">BEIJINGPK10</font></i>
					 		</dd>
							</a>
							<span><button class="layui-btn" style="width: 100px;">游戏规则</button></span>
						</dl>
					</div>
					<div class="layui-col-md3" style="margin-left: 50px;text-align: center;">
						<dl>
							<a href="">
							<dt>
					 		<img src="${pageContext.request.contextPath}/static/images/no13.png">
					 		</dt>
					 		<dd>
					 			<font color="white">北京赛车PK</font><p>
					 			<i><font color="white">BEIJINGPK10</font></i>
					 		</dd>
							</a>
							<span><button class="layui-btn" style="width: 100px;">游戏规则</button></span>
						</dl>
					</div>
				</div>
				<div class="layui-row" style="margin-top: 20px;">
					<div class="layui-col-md3" style="margin-left: 50px;text-align: center;">
						<dl>
							<a href="">
							<dt>
					 		<img src="${pageContext.request.contextPath}/static/images/no10.png">
					 		</dt>
					 		<dd>
					 			<font color="white">北京赛车PK</font><p>
					 			<i><font color="white">BEIJINGPK10</font></i>
					 		</dd>
							</a>
							<span><button class="layui-btn" style="width: 100px;">游戏规则</button></span>
						</dl>
					</div>
					<div class="layui-col-md3" style="margin-left: 50px;text-align: center;">
						<dl>
							<a href="">
							<dt>
					 		<img src="${pageContext.request.contextPath}/static/images/no8.png">
					 		</dt>
					 		<dd>
					 			<font color="white">北京赛车PK</font><p>
					 			<i><font color="white">BEIJINGPK10</font></i>
					 		</dd>
							</a>
							<span><button class="layui-btn" style="width: 100px;">游戏规则</button></span>
						</dl>
					</div>
					<div class="layui-col-md3" style="margin-left: 50px;text-align: center;">
						<dl>
							<a href="">
							<dt>
					 		<img src="${pageContext.request.contextPath}/static/images/no9.png">
					 		</dt>
					 		<dd>
					 			<font color="white">北京赛车PK</font><p>
					 			<i><font color="white">BEIJINGPK10</font></i>
					 		</dd>
							</a>
							<span><button class="layui-btn" style="width: 100px;">游戏规则</button></span>
						</dl>
					</div>
				</div>
				<div class="layui-row" style="height: 50px;">
			</div>
		</div>
	 </div>
	 <jsp:include page="${pageContext.request.contextPath}/foreground/common/footer.jsp"></jsp:include>  
 </div>
<!-- 你的HTML代码 -->
</body>
</html>
