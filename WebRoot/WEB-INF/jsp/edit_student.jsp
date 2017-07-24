<%@page import="com.situ.ssm.entity.Student"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'edit_student.jsp' starting page</title>
    <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/lib/jquery/jquery-1.11.1.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/lib/datepicker/WdatePicker.js" type="text/javascript" charset="utf-8"></script>
  </head>
  
  <body>
   	 <div  class="container" style="width:15%" >
   	 	<h2 style="color:blue">修改学生信息</h2>
     	<form action="${pageContext.request.contextPath}/student/update.action" method="post" class="form-group">
     		<input  type="hidden" name="id" value="${student.id}"/>
    		<label  for="exampleInputName2">姓名：</label>
    		<input type="text" name="name" value="${student.name}" class="form-control"/><br/>
    		<label  for="exampleInputName2">密码：</label>
    		<input type="text" name="password" value="${student.password}" class="form-control"/><br/>
    		<label for="exampleInputName2">年龄：</label>
    		<input type="text" name="age" value="${student.age}" class="form-control"/><br/>
    		<label for="exampleInputName2">性别：</label>
    		<input type="text" name="gender" value="${student.gender}" class="form-control"/><br/>
    		<label >出生日期：</label>
    		<input type="text" name="birthday" class="form-control" id="exampleInputName2" value="${student.birthday}" readonly="readonly" 
    			onfocus="WdatePicker({'skin':'whyGreen','dateFmt':'yyyy-MM-dd'})"/><br/>
    		<p><button type="submit" class="btn btn-info">确认修改</button></p>
    	</form>
    </div>
  </body>
</html>
