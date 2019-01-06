<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<script>
		
		
	</script>
	<!-- 导航 -->
	 <div >
	 	<ul class="layui-nav" id="navBar">
		  <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/index.jsp"><i class="layui-icon layui-icon-home">首页</i></a></li>
		  <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/foreground/liuhecai/index.jsp">六合彩</a></li>
		  <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/foreground/shishicai/index.jsp">时时彩</a></li>
		  <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/foreground/zucai/index.jsp">足彩</a></li>
		  <li class="layui-nav-item"><a href="">双色球</a></li>
		  <li class="layui-nav-item">
		    <a href="javascript:;"><i class="layui-icon layui-icon-user" >个人中心</i></a>
		    <dl class="layui-nav-child">
		      <dd><a href=""><i class="layui-icon layui-icon-user" >个人信息</i></a></dd>
		      <dd><a href=""><i class="layui-icon layui-icon-edit">修改密码</i></a></dd>
		      <dd><a href=""><i class="layui-icon layui-icon-auz">安全退出</i></a></dd>
		    </dl>
		  </li>
		  <li class="layui-nav-item">
		    <a href="javascript:;"><i class="layui-icon layui-icon-form">订单中心</i></a>
		    <dl class="layui-nav-child">
		      <dd><a href="${pageContext.request.contextPath}/foreground/order/index.jsp"><i class="layui-icon layui-icon-cart" >下单车</i></a></dd>
		      <dd><a href="${pageContext.request.contextPath}/foreground/order/history.jsp"><i class="layui-icon layui-icon-log">历史订单</i></a></dd>
		    </dl>
		  </li>
		  
		  <li class="layui-nav-item" style="float: right;"><a href="/foreground/register.jsp">注册</a></li>
		  <li class="layui-nav-item" style="float: right;"><a href="/foreground/login.jsp">登录</a></li>
		</ul>
	</div>
	 <!--导航 -->