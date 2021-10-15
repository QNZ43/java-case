<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@page import= "hbfu.sql.SqlHelper" %>
<%@page import= "hbfu.bean.Company" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>借款借据</title>
<link href="login2.css" rel="stylesheet" type="text/css">
</head>
<body class="background">
<%
		String company_name=request.getParameter("company_name1");
		ResultSet  rs=SqlHelper.selbyname(company_name);
		if(rs.next()==true){
	%>
  <div class="head">
  <p >银行信贷管理系统</p>
  </div>
  <h3 align="center">借款借据</h3>
  
  <form action="add" method="get" style="margin-left:300px">
  <table>
  <tr><td>借款单位名称：</td><td><input type="text" name="company_name" style="width:100%" value=<%=rs.getString(2) %>></td>
  </tr>
  
  <tr><td>贷款账号：</td><td><input type="text" name="loan_number" style="width:100%"value=<%=rs.getString(10) %>></td>
  </tr>
  <tr>
  <td>贷款期限：</td><td><input type="text" name="term" style="width:100%"value=<%=rs.getString(13) %>></td>
  </tr>
  <tr>
  <tr><td>金额：</td><td><input type="text" name="loan_amount" style="width:100%"value=<%=rs.getString(3) %>></td></tr>
  </tr>
  <tr>
  <td colspan="2">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp兹向你行借到上列借款如到期不归还时，请你行或委托开户银行按规定由我单位账户内归还处理。
  <br>如账户内无款偿还，请按规定加收逾期利息。</td>
  </tr>
  </table>
  </form>
  <HR style="border:1 dashed #987cb9" width="80%" color=#987cb9 SIZE=1>
   <%
		}
 	%>
 	<a href="javascript:history.back(-1)"><h3>返回上一页</h3></a>
</body>
</html>