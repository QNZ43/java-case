<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>主任</title>
<link href="login2.css" rel="stylesheet" type="text/css">
</head>
<body class="background">
<HR style="border:1 dashed #987cb9" width="80%" color=#987cb9 SIZE=1>
<a href="dirselect.jsp"><p>查看提案:</p></a>
<a href="agree.jsp"><p>查看批复通知书:</p></a>

  <div class="head">
  <p >银行信贷管理系统</p>
  <a href="login.jsp"><h3 align="right">退出登录</h3></a>
  </div>
  <h3 align="center">授信总量或现金类授信发放审核送审意见表</h3>
  
  <form action="diradd" method="get" style="margin-left:40px">
  <table>
	<tr><td>借款企业名称:</td><td><input type="text" name="company_name" style="width:100%"></td>
		<td>批准贷款金额:</td><td><input type="text" name="loan" ></td>
	</tr>
	<tr><td>项目名称:</td><td><input type="text" name="entry_name" style="width:100%"></td>
		<td>客户号:</td><td><input type="text" name="customer_number" ></td>
	</tr>
	<tr>
	<td>授信批复通知书编号:</td>
	<td colspan="3"><input type="text" name="notice_number" style="width:100%" ></td>
	</tr>
	<tr><td>贷款合同文书号:</td><td><input type="text" name="document_number" style="width:100%"></td>
		<td>贷款合同号:</td><td><input type="text" name="contract_number" ></td>
	</tr>
	<tr><td>借款企业名称:</td><td><input type="text" name="bank_account" style="width:100%"></td>
		<td>贷款账号:</td><td><input type="text" name="loan_number" ></td>
	</tr>
	<tr><td>贷款用途:</td><td><input type="text" name="purpose" style="width:100%"></td>
		<td>贷款利率:</td><td><input type="text" name="rate" ></td>
	</tr>
	<tr><td>贷款期限:</td><td><input type="text" name="term" style="width:100%"></td>
		<td>第几次提款:</td><td><input type="text" name="drawing_time" ></td>
	</tr>
	<tr><td>借本合同项目下已发放金额:</td><td><input type="text" name="amount_paid" style="width:100%"></td>
		<td>尚未使用贷款余额:</td><td><input type="text" name="balance" ></td>
	</tr>
	<tr><td>担保方式:</td><td><input type="text" name="guarantee_method" style="width:100%"></td>
		<td>本次用款金额:</td><td><input type="text" name="this_use_balance" ></td>
	</tr>
	<tr>
	<td colspan="2">合同本文是否与我行法律与法规部出具的示范文本一致（一致；部分一致；不一致）</td>
	<td colspan="2"><input type="text" name="consistent" style="width:100%"></td>
	</tr>
	
	<tr>
	<td>客户开发/客户维护人员意见：</td><td><input type="text" name="developer_opinion" style="width:100%"></td>
	<td >分/支行中小企业业务中心负责人意见：</td><td > <input type="text" name="enterprise_opinion"></td>
	</tr>
	<tr>
	<td colspan="2">联系电话</td>
	<td colspan="2"><input type="text" name="contact_number" style="width:100%"></td>
	</tr>

  </table>
   
  <br>
  &nbsp&nbsp&nbsp&nbsp<input type="reset" value="重置" style="margin-left:500px"/>&nbsp&nbsp&nbsp&nbsp
    <input type="submit" value="提交" /></br> </form>
<form action="Download">
<center>请输入您要下载的文件的公司名：<input type="text" name="company_name"><input type="submit" value="下载"></center>

</form>
	

  <form action="select1.jsp" method="get" >
<center>请输入公司姓名： <input type="text" name="company_name1" /><input type="submit" value="查看" /></center>
</form>
<form action="reset1.jsp" method="get">
<center>请输入公司姓名： <input type="text" name="company_name1" /><input type="submit" value="修改" /></center>
</form>
<form action="dirdel" method="get">
<center>请输入公司姓名： <input type="text" name="company_name1" /><input type="submit" value="删除" /></center>
</form>
  <a href="javascript:history.back(-1)"><h3 align="right">返回上一页</h3></a>
</body>
</html>