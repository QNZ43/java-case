<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link href="login2.css" rel="stylesheet" type="text/css">
<html>
  <head>
  <title>欢迎进行登录验证</title>
  </head>
  
  <body class="background">
  <div class="head">
  <p >银行信贷管理系统</p>
  </div>
  <div class="whole">
  <p align="center" ><font color="#66a3ff" size="5">欢迎登陆银行信贷管理系统</font></p>
  
  <div>
  <form  align="center" action="check" method="get" name="name1">
    	账号：<input type="text" style="width:300px;height:30px" name="account" /><br>
    	密码：<input type="password" style="width:300px;height:30px" name="password"/><br><br><br>
  
  	<label><input type="radio" style="margin-left: 40px;" name="role" value="0">业务经理</label>
  <label><input type="radio" style="margin-left: 40px;" name="role" value="1">独立人</label>
  <label><input type="radio" style="margin-left: 40px;" name="role" value="2">部门主任</label><br><br>
  	<input type="submit" style="width:300px;height:30px;background-color:#66a3ff;margin-left:40px" value="登录"/>
  
  
      </form>
  	</div>
	</div>
 </body>

</html>
  	
  	