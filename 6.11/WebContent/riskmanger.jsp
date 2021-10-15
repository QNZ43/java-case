<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@page import= "hbfu.sql.SqlHelper" %>

<!DOCTYPE html>
<link href="login2.css" rel="stylesheet" type="text/css">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="10">
<title>独立人</title>


</head>
<body class="background">
<a href="login.jsp"><h3 align="right">退出登录</h3></a>
<p>当前需要处理的业务</p>

<form action="Download" >
请输入您要下载相关文件的公司名：<input type="text" name="company_name"><input type="submit" value="下载">
</form>
<a href="agree.jsp"><p>查看批复通知书:</p></a>
<%
		
		ResultSet rs=SqlHelper.selectbyflag();
		while(rs.next()==true){
	%>
<form action="agree">
<table>
  <tr>
  <td rowspan="6">企业概况</td>
  
  </tr>
  
  <tr >
  <td>企业名称：</td>
  <td><input type="text" name="company_name" readonly="readonly"  value=<%=rs.getString(2) %>></td>
  <td>实际经营开始日期：</td>
  <td><input type="text" name="start_date"readonly="readonly" value=<%=rs.getString(4) %>></td>
  <td>上年度销售收入：</td>
  <td><input type="text" name="income" readonly="readonly"value=<%=rs.getString(6)%>></td>
  </tr>
  
  <tr>
  <td>客户号：</td>
  <td><input type="text" name="customer_number" readonly="readonly"value=<%=rs.getString(3)%>></td>
  <td>所属行业：</td>
  <td><input type="text" name="trade_kind" readonly="readonly" value=<%=rs.getString(5)%>></td>
  <td>行业政策：</td>
  <td><input type="text" name="trade_policy" readonly="readonly" value=<%=rs.getString(7)%>></td>
  
  </tr>
  
   <tr>
  <td>本年度分类结果：</td>
  <td><input type="text" name="classfication"  readonly="readonly"value=<%=rs.getString(9)%>></td>
  <td>本年度信用评级：</td>
  <td><input type="text" name="credit_rating" readonly="readonly" value=<%=rs.getString(8)%>></td>
  <td>本年债务承受额：</td>
  <td><input type="text" name="debt" readonly="readonly" value=<%=rs.getString(10)%>></td>
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
  <td colspan="2"><input type="text" name="credit_varieties" readonly="readonly" value=<%=rs.getString(11)%>></td>
  <td><input type="text" name="loan"  readonly="readonly"value=<%=rs.getString(12)%>></td>
  <td><input type="text" name="last_loan"  readonly="readonly"value=<%=rs.getString(15)%>></td>
  <td><input type="text" name="note"  readonly="readonly"value=<%=rs.getString(13)%>></td>
  <td><input type="text" name="credit_balance"  readonly="readonly"value=<%=rs.getString(14)%>></td>
  </tr>
  <tr><td colspan="4">实际控制人是否提供个人连带责任 ：</td>
  <td colspan="2"><input type="text" name="guaranteen_liability" readonly="readonly" value=<%if(rs.getString(16)=="0"){
	  out.println("是");
 		 }else{
	  out.println("否");} %>
	  ></td></tr>
  <tr>
  <td colspan="2">押品</td><td>评估价值：</td><td>综合抵质押率：</td><td>抵押价值：</td>
  </tr>
  <tr>
  <td colspan="2"><input type="text" name="collateral" readonly="readonly"value=<%=rs.getString(17)%>></td>
  <td><input type="text" name="evaluation_value"readonly="readonly" value=<%=rs.getString(18)%>></td>
  <td><input type="text" name="mortgage_rate" readonly="readonly"value=<%=rs.getString(19)%>></td>
  <td><input type="text" name="mortgage_value" readonly="readonly"value=<%=rs.getString(20)%>></td>
  </tr>
  <tr align="center"><td colspan="7">授信申请人资金用途需求的合理性分析</td></tr>
  <tr><td colspan="7"><input type="text" name="rationality_analysis" readonly="readonly" value=<%=rs.getString(21)%>></td></tr>
 
  </table>
 <center><input type="submit" value="同意" /></center>
  </table>
  </form>
   <form action="disagree" method="get">
   请再次输入您要驳回授信批复的公司姓名：<input type="text" name="company_name"><input type="submit" value="驳回">
  </form>
<%
		}
 	%>
 	
 	
 <a href="javascript:history.back(-1)"><h3 align="right">返回上一页</h3></a>
</body>
</html>