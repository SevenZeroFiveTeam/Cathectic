<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!--内容 -->
	 <div class="layui-row" style="margin-top: 5px;background-color: #f2f2f2 ">
		 	<div class="layui-col-xs3" style="width: 220px;">
		 		<jsp:include page="${pageContext.request.contextPath}/foreground/zucai/type.jsp"></jsp:include>
		 	</div>
		 	
		 	<!--详细功能页面 -->
		 	<div class="layui-col-xs9">
		 		<jsp:include page="${pageContext.request.contextPath}/foreground/zucai/tema.jsp"></jsp:include>
		 	</div>
		 	<!-- 抽取单独页面 -->
	 </div>
	 <!-- end 内容 -->