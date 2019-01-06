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
	 
	 <jsp:include page="${pageContext.request.contextPath}/foreground/liuhecai/mainPage.jsp"></jsp:include>
	 
	 <jsp:include page="${pageContext.request.contextPath}/foreground/common/footer.jsp"></jsp:include>  
 </div>
<!-- 你的HTML代码 -->
</body>
</html>
