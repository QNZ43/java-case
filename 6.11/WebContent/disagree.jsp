<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@page import= "hbfu.sql.SqlHelper" %>
<!DOCTYPE html>
<link href="login2.css" rel="stylesheet" type="text/css">
<html>
<head>
<meta charset="ISO-8859-1">
<title>授信批复通知</title>
<style>
input{
        border: none;
        overflow: hidden;
       
    } 
</style>
</head>
<body class="background">


 
  
  <HR style="border:1 dashed #987cb9" width="80%" color=#987cb9 SIZE=1>
<%
		
		ResultSet rs=SqlHelper.disagree();
		while(rs.next()==true){
	%>
<h3><center>授信未批复通知</center></h3>
<HR style="border:1 dashed #987cb9" width="80%" color=#987cb9 SIZE=1>
<p> <%=rs.getString(2) %>  工资或企业公司授信未经审核！</p>
 	<a href="javascript:history.back(-1)"><h3>返回上一页</h3></a>
</body>
<%
		}
%>
</html>