<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>My JSP 'student_list.jsp' starting page</title>
	<link rel="stylesheet" type="text/css"
    	href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css" />
	<script src="${pageContext.request.contextPath}/lib/jquery/jquery-1.11.1.js" type="text/javascript"
    	charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.js" type="text/javascript"
    	charset="utf-8"></script>
    <script type="text/javascript">
    	function delStudent(id) {
    		var isDel = confirm("您确认要删除吗？");
    		if(isDel) {
    			location.href="${pageContext.request.contextPath}/student/delete.action?id=" + id;
    		}
    	}
    </script>
</head>
<body>
    <div class="container" style="width:70%">
       <div align="center">
           <h2 style="display: inline" >学生信息管理系统</h2> 欢迎您：${student.getName()} <a href="${pageContext.request.contextPath}/loginFilter?method=loginOut">退出</a>
       </div>
       
       <form action="${pageContext.request.contextPath}/student/list.action">
       		<a class="btn btn-primary" 
       		   href="${pageContext.request.contextPath}/add_student.jsp">添加学生</a>
       </form>
       
       <form id="mainForm" action="" method="post">
           <table class="table table-bordered table-hover table-striped">
               <tr>
                  <td>
                      <input type="checkbox" id="selectAll" onClick="selectAlls();"/>
                  </td>
                  <td>ID</td>
                  <td>姓名</td>
                  <td>密码</td>
                  <td>年龄</td>
                  <td>性别</td>
                  <td>出生日期</td>
                  <td>删除</td>
                  <td>修改</td>
               </tr>
               <c:forEach items="${list}" var="student">
                  <tr>
                      <td>
                          <input type="checkbox" name="selectIds" value="${student.getId()}"/>
                      </td>
                      <td>${student.getId()}</td>
                      <td>${student.getName()}</td>
                      <td>${student.getPassword()}</td>
                      <td>${student.getAge()}</td>
                      <td>${student.getGender()}</td>
                      <td>${student.getBirthday()}</td>
                      <td><a href="javascript:void(0);"
                          onclick="delStudent('${student.getId()}')">删除</a>
                      </td>
                      <td><a
                          href="${pageContext.request.contextPath}/student/toUpdate.action?id=${student.getId()}">修改</a>
                      </td>
                  </tr>
               </c:forEach>
           </table>
       </form>
    </div>
</body>