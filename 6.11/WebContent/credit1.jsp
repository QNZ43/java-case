<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@page import= "hbfu.sql.SqlHelper" %>
<%@page import= "hbfu.bean.Company" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>提款申请书</title>
<link href="login2.css" rel="stylesheet" type="text/css">
</head>
<body class="background">
<a href="javascript:history.back(-1)" align="right"><h3>返回上一页</h3></a>
<form action="selbyname1.jsp" method="get">
  <h4>请输入查看公司姓名<input type="text" name="company_name1" style="width:100%" ><input type="submit" vlaue="提交"/></h4>
  
  </form>
  <HR style="border:1 dashed #987cb9" width="80%" color=#987cb9 SIZE=1>
<%
	
		ResultSet  rs=SqlHelper.selcredited();
		if(rs.next()==true){
	%>
  <div class="head">
  <p >银行信贷管理系统</p>
  </div>
  <h3 align="center">提款申请书</h3>
  
  <form action="add" method="get" style="margin-left:300px">
  致：<input type="text" name="company_name" value=<%=rs.getString(2) %>>
  <br>根据我方与贵行签署的流动资金借款合同，我方特向贵行提出如下提款申请：
  <br>一、我方按一下方式进行该借款合同项下提款：
  <br>一次性提款。
  <br>提款金额总计为：人民币（币种）：
  <br><input type="text" name="loan_amount" value=<%=rs.getString(3) %>>
  <br>二、请贵行将上述款项按下表所列金额及时间分笔划入我方下列账号：
  <br>户名：<input type="text" name="company_name" value=<%=rs.getString(3) %>>
  <br>账号：<input type="text" name="loan_number" value=<%=rs.getString(10)%>><br>
  <table >
  <tr><td>时间</td><td>金额</td></tr>
  <tr><td><input type="text" name="term" value=<%=rs.getString(13) %>></td><td><input type="text" name="loan_amount" value=<%=rs.getString(3) %>></td></tr>
  </table>
  <br>三、根据借款合同的约定，本笔借款采用如下借款方式：
  <br>贷款人受托支付。我方授权和委托贵行在将本笔借款划入我方账户后，直接支付给
  <br>符合借款合同约定用途的我方指定的交易对手账户，支付金额为：<input type="text" name="loan_amount" value=<%=rs.getString(3) %>>
  <br>全部为受托支付。
  <br>四、我方谨向贵行确认：
  <br>1.该笔借款将用于借款合同约定的用途。
  <br>2.在该申请书发出之日至提款日，我方在借款合同中所作的所有陈述、保证和承诺仍热真实、准确、完整、有效。
  <br>3.截至本申请书发出之日，我方的生产经营和财务信用状况未发生重大不利变化。
  
  </form>
   <HR style="border:1 dashed #987cb9" width="80%" color=#987cb9 SIZE=1>
    <%} else{
	  response.sendRedirect("null.jsp");
  } %>
 	<a href="javascript:history.back(-1)"><h3>返回上一页</h3></a>
</body>
</html>