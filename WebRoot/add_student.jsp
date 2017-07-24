<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'add_student.jsp' starting page</title>
    <link rel="stylesheet" type="text/css"
    	href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css" />
	<script src="${pageContext.request.contextPath}/lib/jquery/jquery-1.11.1.js" type="text/javascript"
    	charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.js" type="text/javascript"
   		charset="utf-8"></script>
  </head>
  
  <body>
      <div class="container" style="width:15%">
  		<h2 style="color:blue">添加学生信息</h2>
    	<form action="${pageContext.request.contextPath}/student/add.action" method="post" class="form-group">
    		<label >姓名：</label>
    		<input type="text" id="name" name="name" class="form-control" id="exampleInputName2" placeholder="name"/>
    		<!-- <span id="nameInfo"></span><br> -->
    		<label >密码：</label>
    		<input type="text" name="password" class="form-control" id="exampleInputName2" placeholder="age"/><br/>
    		<label >年龄：</label>
    		<input type="text" name="age" class="form-control" id="exampleInputName2" placeholder="age"/><br/>
    		<label >性别：</label>
    		<input type="text" name="gender" class="form-control" id="exampleInputName2" placeholder="gender"/><br/>
    		<label >出生日期：</label>
    		<input type="text" name="birthday" class="form-control" id="exampleInputName2" placeholder="gender"/><br/>
    		<p><button type="submit" class="btn btn-info">保存</button></p>
    	</form>
    </div>
  </body>
</html>
