<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@page import= "hbfu.sql.SqlHelper" %>
<%@page import= "hbfu.bean.Company" %>
<link href="login2.css" rel="stylesheet" type="text/css">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>查看提案</title>
<style>
table {
    border-collapse: collapse;
   
}
table, td, th {
    border: 1px solid black;
   
}
input{
border: none;

}
 table.input{
        border: none;
        overflow: hidden;
        height: 100%;
        width: 100%;
    } 
</style>
</head>
<body class="background">
<a href="javascript:history.back(-1)" align="right"><h3>返回上一页</h3></a>
<form action="select.jsp" method="get">
  <h4>请输入查看公司姓名<input type="text" name="company_name1" style="width:100%" ><input type="submit" vlaue="提交"/></h4>
  
  </form>
  
  <HR style="border:1 dashed #987cb9" width="80%" color=#987cb9 SIZE=1>

<%
		ResultSet rs=SqlHelper.agree();
		while(rs.next()==true){
	%>
<HR style="border:1 dashed #987cb9" width="80%" color=#987cb9 SIZE=1>
<p>公司提案</p>
	<form>
 <table>
  <tr>
  <td rowspan="6">企业概况</td>
  
  </tr>
  
  <tr >
  <td>企业名称：</td>
  <td><input type="text" name="company_name" value=<%=rs.getString(2) %>></td>
  <td>实际经营开始日期：</td>
  <td><input type="text" name="start_date" value=<%=rs.getString(4) %>></td>
  <td>上年度销售收入：</td>
  <td><input type="text" name="income" value=<%=rs.getString(6)%>></td>
  </tr>
  
  <tr>
  <td>客户号：</td>
  <td><input type="text" name="customer_number" value=<%=rs.getString(3)%>></td>
  <td>所属行业：</td>
  <td><input type="text" name="trade_kind" value=<%=rs.getString(5)%>></td>
  <td>行业政策：</td>
  <td><input type="text" name="trade_policy" value=<%=rs.getString(7)%>></td>
  
  </tr>
  
   <tr>
  <td>本年度分类结果：</td>
  <td><input type="text" name="classfication" value=<%=rs.getString(9)%>></td>
  <td>本年度信用评级：</td>
  <td><input type="text" name="credit_rating" value=<%=rs.getString(8)%>></td>
  <td>本年债务承受额：</td>
  <td><input type="text" name="debt" value=<%=rs.getString(10)%>></td>
  </tr>
  <table>
  <tr>
  <td rowspan="10">授信总量</td>
  </tr>
  <tr>
  <td colspan="2" style="width:24%"><center>品种</center> </td>
  <td>本次上报总量：</td><td>上期总量：</td><td>授信余额：</td>
  <td>备注：</td>
  </tr>
  <tr>
  <td colspan="2"><input type="text" name="credit_varieties" value=<%=rs.getString(11)%>></td>
  <td><input type="text" name="loan" value=<%=rs.getString(12)%>></td>
  <td><input type="text" name="last_loan" value=<%=rs.getString(15)%>></td>
  <td><input type="text" name="note" value=<%=rs.getString(13)%>></td>
  <td><input type="text" name="credit_balance" value=<%=rs.getString(14)%>></td>
  </tr>
  <tr><td colspan="4">实际控制人是否提供个人连带责任 ：</td>
  <td colspan="2"><input type="text" name="guaranteen_liability" value=<%if(rs.getString(16)=="0"){
	  out.println("是");
 		 }else{
	  out.println("否");} %>
	  ></td></tr>
  <tr>
  <td colspan="2">押品</td><td>评估价值：</td><td>综合抵质押率：</td><td>抵押价值：</td>
  </tr>
  <tr>
  <td colspan="2"><input type="text" name="collateral" value=<%=rs.getString(17)%>></td>
  <td><input type="text" name="evaluation_value" value=<%=rs.getString(18)%>></td>
  <td><input type="text" name="mortgage_rate" value=<%=rs.getString(19)%>></td>
  <td><input type="text" name="mortgage_value" value=<%=rs.getString(20)%>></td>
  </tr>
  <tr align="center"><td colspan="7">授信申请人资金用途需求的合理性分析</td></tr>
  <tr><td colspan="7"><input type="text" name="rationality_analysis" value=<%=rs.getString(21)%>></td></tr>
 
  </table>
  <%
		}
 	%>
  
 </form>
  
  </table>
  <a href="javascript:history.back(-1)"><h3>返回上一页</h3></a>
</body>
</html>