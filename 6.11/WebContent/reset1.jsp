<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@page import= "hbfu.sql.SqlHelper" %>
<%@page import= "hbfu.bean.Company" %>
<!DOCTYPE html>
<html>
<link href="login2.css" rel="stylesheet" type="text/css">
<head>
<meta charset="ISO-8859-1">
<title>修改信息</title>
</head>
<body class="background">
<%
		String company_name = request.getParameter("company_name1");
		ResultSet  rs=SqlHelper.dirselect(company_name);
		if(rs.next()==true){
	%>
	 <form action="dirreset" method="get" style="margin-left:40px">
  <table>
	<tr><td>借款企业名称:</td><td><input type="text" name="company_name" style="width:100%" value=<%=company_name %>></td>
		<td>批准贷款金额:</td><td><input type="text" name="loan" value=<%=rs.getString(3) %> ></td>
	</tr>
	<tr><td>项目名称:</td><td><input type="text" name="entry_name" style="width:100%" value=<%=rs.getString(4) %> ></td>
		<td>客户号:</td><td><input type="text" name="customer_number" value=<%=rs.getString(5) %> ></td>
	</tr>
	<tr>
	<td>授信批复通知书编号:</td>
	<td colspan="3"><input type="text" name="notice_number" style="width:100%" value=<%=rs.getString(6) %>></td>
	</tr>
	<tr><td>贷款合同文书号:</td><td><input type="text" name="document_number" style="width:100%"value=<%=rs.getString(7) %>></td>
		<td>贷款合同号:</td><td><input type="text" name="contract_number" value=<%=rs.getString(8) %> ></td>
	</tr>
	<tr><td>借款企业名称:</td><td><input type="text" name="bank_account" style="width:100%" value=<%=rs.getString(9) %>></td>
		<td>贷款账号:</td><td><input type="text" name="loan_number" value=<%=rs.getString(10) %> ></td>
	</tr>
	<tr><td>贷款用途:</td><td><input type="text" name="purpose" style="width:100%" value=<%=rs.getString(11) %>></td>
		<td>贷款利率:</td><td><input type="text" name="rate" value=<%=rs.getString(12) %>></td>
	</tr>
	<tr><td>贷款期限:</td><td><input type="text" name="term" style="width:100%" value=<%=rs.getString(13) %>></td>
		<td>第几次提款:</td><td><input type="text" name="drawing_time" value=<%=rs.getString(14) %> ></td>
	</tr>
	<tr><td>借本合同项目下已发放金额:</td><td><input type="text" name="amount_paid" style="width:100%" value=<%=rs.getString(15) %>></td>
		<td>尚未使用贷款余额:</td><td><input type="text" name= "balance" value=<%=rs.getString(16) %> ></td>
	</tr>
	<tr><td>担保方式:</td><td><input type="text" name="guarantee_method" style="width:100%" value=<%=rs.getString(17) %>></td>
		<td>本次用款金额:</td><td><input type="text" name="this_use_balance" value=<%=rs.getString(18) %>></td>
	</tr>
	<tr>
	<td colspan="2">合同本文是否与我行法律与法规部出具的示范文本一致（一致；部分一致；不一致）</td>
	<td colspan="2"><input type="text" name="consistent" style="width:100%" value=<%=rs.getString(19) %>></td>
	</tr>
	
	<tr>
	<td>客户开发/客户维护人员意见：</td><td><input type="text" name="developer_opinion" style="width:100%" value=<%=rs.getString(20) %>></td>
	<td >分/支行中小企业业务中心负责人意见：</td><td ><input type="text" name="enterprise_opinion" value=<%=rs.getString(21) %> ></td>
	</tr>
	<tr>
	<td colspan="2">联系电话</td>
	<td colspan="2"><input type="text" name="contact_number" style="width:100%" value=<%=rs.getString(22) %>></td>
	</tr>

  </table>
  <br>
  &nbsp&nbsp&nbsp&nbsp<input type="reset" value="重置" style="margin-left:500px"/>&nbsp&nbsp&nbsp&nbsp
    <input type="submit" value="提交" />
  
  </table>
  </form>
  <%} else{
	  response.sendRedirect("null.jsp");
  } %>
  <a href="javascript:history.back(-1)"><h3>返回上一页</h3></a>
</body>
</html>