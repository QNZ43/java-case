<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@page import= "hbfu.sql.SqlHelper" %>
<%@page import= "hbfu.bean.Company" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>借款合同</title>
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
  <h3 align="center">流动资金借款合同</h3>
  <form action="add" method="get" style="margin-left:300px">
  <table>
  <tr><td>借款单位名称：</td><td><input type="text" name="company_name" style="width:100%" value=<%=rs.getString(2) %>></td>
  </tr>
  </table>
  借款人、贷款人经平等协商，就贷款人向借款人发放流动资金贷款事宜达成一致，</br>
  特订本立合同。<br>
  本合同属于<input type="text" name="company_name" value=<%=rs.getString(2) %>>与客户<input type="text" name="customernum"value=<%=rs.getString(5) %>>
  签署的<br>单项协议。
  <br>第一条&nbsp&nbsp&nbsp&nbsp借款金额
  <br>借款币种：人民币
  <br>借款金额：<input type="text" name="loan_amount"value=<%=rs.getString(3) %> >
  <br>第二条&nbsp&nbsp&nbsp&nbsp借款期限
  <br>借款期限：<input type="text" name="term" value=<%=rs.getString(13)%>>,自实际提款日起算：若为分期提款，则自第一个实际提款日起算。
  <br>借款人应严格按照约定提款时间提款，实际提款日晚于约定提款时间的，提款人应按照本合同约定的还款
  <br>时间还款。
  <br>第三条&nbsp&nbsp&nbsp&nbsp借款用途
  <br>借款用途：<input type="text" name="purpose"value=<%=rs.getString(11)%> >
  <br>第四条&nbsp&nbsp&nbsp&nbsp借款利率
  <br>借款利率：<input type="text" name="prate"value=<%=rs.getString(12)%>>
  
  </form>
   <HR style="border:1 dashed #987cb9" width="80%" color=#987cb9 SIZE=1>
    <%
		}
 	%>
 	<a href="javascript:history.back(-1)"><h3>返回上一页</h3></a>
</body>
</html>