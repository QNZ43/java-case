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
<a href="javascript:history.back(-1)" align="right"><h3>返回上一页</h3></a>

 <form action="agree1.jsp" method="get">
  <h4>请输入查看公司姓名<input type="text" name="company_name1" style="width:100%" ><input type="submit" vlaue="提交"/></h4>
  
  </form>
  
  <HR style="border:1 dashed #987cb9" width="80%" color=#987cb9 SIZE=1>
<%
		
		ResultSet rs=SqlHelper.agree();
		while(rs.next()==true){
	%>
<h3><center>授信批复通知书</center></h3>
<HR style="border:1 dashed #987cb9" width="80%" color=#987cb9 SIZE=1>
<form>
<center><p>关于<input type="text" name="company_name" readonly="readonly"  value=<%=rs.getString(2) %> /> 授信的批复</p></br></center>
:</br>
<p>
一、你单位《信贷提案》及相关资料收悉,经审查,现批复如下:同意为<input type="text" name="company_name" readonly="readonly"  value=<%=rs.getString(2) %> />核定授信总量<input type="text" name="loan"  readonly="readonly"value=<%=rs.getString(12)%> />,全部产品短期流动资金贷款,额度使用期限3年，单笔贷款最长使用期限不超过1年,到期必须年审。
该笔贷款按照放款前一工作日基础利率(全国银行间同业拆借中心发布的基础利率)加点执行,最终实际执行利率不低于人行1年期贷款基准利率上浮25%。
该授信总量由和名下资产提供抵押担保,同时由借款人实际控制人提供个人连带责任保证担保。本笔授信总量有效期自发文之日起1年。</br>
二、授信批复要求</br>
（一）授信前提条件</br>
（二）授信约束条件</br>
2、抵押物未出租的,要求借款人(抵押人)出具抵押财产未出租声明:抵押财产已出租的:
(1)要求承租人承诺抵押物处置时放弃租赁权,或要求承租人与出租人在抵押物抵押后,重新签
订租赁合同。
(2)要求承租人、出租人出具承诺,明确承租人与出租人就租赁房屋的续租达成任何协议或重新签订租赁合同,或者对原始租赁合同达成任何性质的补充协议,须事先经过
抵押权人的书面同意。
3、拟抵押房产为抵押人非唯一住宅
4、授信的使用和管理须符合我行及外部监管部门的相关管理规定和要求</br>
(三)授信管理要求</br>
1、密切关注国家产业政策、行业波动、市场的变化情况,以及借款人经营情况和信用状况,如发现风险隐患,须及时终止我行
授信并收回贷款
2、加强贷后管理,加强与借款人的沟通,关注借款人在或有负
债、存货及应收账款等资产对外抵质押、民间借贷活动、股东分红等重大财务领域的变化情况,动态调整我行授信策略,维护我行权益,确保我行授信资产安全。
3、密切监控管理抵押物,若实际抵押担保能力变弱时,应积极增加其他担保措施
4、要求该公司增加在我行的销售收入归行率:逐季监测借款人在我行的结算量占比,如达不到要求需及时采取整改措施,必要时提前收回我行授信
5、争取将我行合同申请强制执行公证
6、其他未尽事宜,请按照我行授信管理有关规定执行复。
</p>

 	</form>
 	<%
		}
 	%>
 	<a href="javascript:history.back(-1)"><h3>返回上一页</h3></a>
</body>
</html>