<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!DOCTYPE html>
<html>
<head>
<title>信息</title>
<link href="login2.css" rel="stylesheet" type="text/css">
</head>
<body class="background">
<div class="head">
  <h3 align="left">银行信贷管理系统</h3>
  <a href="login.jsp"><h3 align="right">退出登录</h3></a>
  </div>
<h4 align="center">授信项目信贷提案</h4>


<form action="add" style="margin-left:40px" method="post" enctype="multipart/form-data">

  <table>
  <tr>
  <td rowspan="6">企业概况</td>
  
  </tr>
  
  <tr >
  <td>企业名称：</td>
  <td><input type="text" name="company_name"></td>
  <td>实际经营开始日期：</td>
  <td><input type="text" name="start_date"></td>
  <td>上年度销售收入：</td>
  <td><input type="text" name="income"></td>
  </tr>
  
  <tr>
  <td>客户号：</td>
  <td><input type="text" name="customer_number"></td>
  <td>所属行业：</td>
  <td><input type="text" name="trade_kind"></td>
  <td>行业政策：</td>
  <td><input type="text" name="trade_policy"></td>
  
  </tr>
  
   <tr>
  <td>本年度分类结果：</td>
  <td><input type="text" name="classfication"></td>
  <td>本年度信用评级：</td>
  <td><input type="text" name="credit_rating"></td>
  <td>本年债务承受额：</td>
  <td><input type="text" name="debt"></td>
  </tr>
  <table>
  <tr>
  <td rowspan="10">授信总量</td>
  </tr>
  <tr>
  <td colspan="2" ><center>品种</center> </td>
  <td>本次上报总量：</td><td>上期总量：</td><td>授信余额：</td>
  <td>备注：</td>
  </tr>
  <tr>
  <td colspan="2"><input type="text" name="credit_varieties"></td>
  <td><input type="text" name="loan"></td>
  <td><input type="text" name="last_loan"></td>
  <td><input type="text" name="note"></td>
  <td><input type="text" name="credit_balance"></td>
  </tr>
  <tr><td colspan="4">实际控制人是否提供个人连带责任 ：</td>
  <td colspan="2"><input type="radio" name="guaranteen_liability" value="0">是&nbsp&nbsp&nbsp&nbsp<input type="radio" name="guaranteen_liability" value="1">否</td></tr>
  <tr>
  <td colspan="2">押品</td><td>评估价值：</td><td>综合抵质押率：</td><td>抵押价值：</td>
  </tr>
  <tr>
  <td colspan="2"><input type="text" name="collateral"></td>
  <td><input type="text" name="evaluation_value"></td>
  <td><input type="text" name="mortgage_rate"></td>
  <td><input type="text" name="mortgage_value"></td>
  </tr>
  <tr align="center"><td colspan="7">授信申请人资金用途需求的合理性分析</td></tr>
  <tr><td colspan="7"><input type="text" name="rationality_analysis" style="width:100%;height:100%"></td></tr>
 
  </table>
 
  
  </table>
  <input type="file" name="myfile" style="margin-left:500px">
  <h5 style="margin-left:500px">（上传需要的文件）</h5> 
  
  <input type="reset" value="重置" style="margin-left:500px"/>&nbsp&nbsp&nbsp&nbsp
  <input type="submit" value="提交" />
  
</form>
<HR style="border:1 dashed #987cb9" width="80%" color=#987cb9 SIZE=1>
<h5 align="center">更多操作</h5>
<form action="select.jsp" method="get" >
<center>请输入公司姓名： <input type="text" name="company_name1" /><input type="submit" value="查看" /></center>
</form>
<form action="reset.jsp" method="get">
<center>请输入公司姓名： <input type="text" name="company_name1" /><input type="submit" value="修改" /></center>
</form>
<form action="delete" method="get">
<center>请输入公司姓名： <input type="text" name="company_name1" /><input type="submit" value="删除" /></center>
</form>
<HR style="border:1 dashed #987cb9" width="80%" color=#987cb9 SIZE=1>
<h5 align="center">已获批复</h5>
<p>授信总量或现金类授信发放审核送审意见表</p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<form action="select1.jsp" method="get" >
<center>请输入公司姓名： <input type="text" name="company_name1" /><input type="submit" value="查看" /></center>
</form>
<a href="credit.jsp">借款借据</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="credit1.jsp">提款申请书</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="credit2.jsp">借款合同</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<HR style="border:1 dashed #987cb9" width="80%" color=#987cb9 SIZE=1>
<a href="disagree.jsp">未获批复</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp








<a href="javascript:history.back(-1)"><h3 align="right">返回上一页</h3></a>

</body>
</html>