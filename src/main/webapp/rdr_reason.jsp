
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.util.Iterator" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Map" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>

<h5>填写RDR原因</h5>
	
  <form name="form1" action="" method="get">
    	<TABLE border="1" style="border-collapse: collapse" bordercolor="green" cellspacing="1">
    <tr>
    	<td><font color="red">*</font>服务单单号:</td>
    	<td><font color="red"><input type="text" name="orderno" class=text  size=25 readonly>注：*为必填</font></td>
    </tr>
    <tr>
    	<td><font color="red">*</font>服务站:</td>
    	<td><font color="red"><input type="text" name="deptno" class=text  size=25 readonly></td>
    </tr>
	<tr>
    	<td><font color="red">*</font>主机号码:</td>
    	<td><font color="red"><input type="text" name="computerid" class=text  size=25 readonly></td>
    </tr>
    <tr>
    	<td><font color="red">*</font>工程师:</td>
    	<td>
			<input type="text" name="computerid" class=text size=25 required="required"></td>
		</td>
    </tr>
  	<tr>
  		<td><font color="red">*</font>一级原因:</td>
  		<td>
		   <select name="onereason" id="onereason" onChange="set_tworeason(this, this.form.tworeason);">
		   <option value="0">请选择一级原因</option>
		   <option value="出现新问题">出现新问题</option>
		   <option value="备件质量问题">备件质量问题</option>
		   <option value="流程问题">流程问题</option>
		   <option value="旧问题没解决">旧问题没解决</option>
		   <option value="客户问题">客户问题</option>
		   <option value="其他问题">其他问题</option>
		   <option value="TS原因">TS原因</option>
		   <option value="DSP工程师导致">DSP工程师导致</option>
		   </select>
    	</td>
  	</tr>
  	<tr>
  		<td><font color="red">*</font>二级原因：</td>
  		<td>
  		<select name="tworeason" id="tworeason">
		<option value="0">请选择二级原因</option>
		</select>
		</td>
  	</tr>
  	<tr>
  		<td colspan="2" align="center"><input type="submit" value='提交'></td>
  	</tr>
  </TABLE>
    
  </form>
  
  
</center>  
</body>
<script type="text/javascript">
	 <!-- 下拉连动相关js -->
	 cities = new Object();
	 cities['出现新问题']=new Array('老问题被新问题掩盖', '未做全面诊断', '离开现场后客户反映新问题');
	 cities['备件质量问题']=new Array('备件替代关系问题', '备件DOA');
	 cities['流程问题']=new Array('Cancel单', 'labor单', '其他流程问题');
	 cities['旧问题没解决']=new Array('换件后问题没解决');
	 cities['客户问题']=new Array('客户高要求');
	 cities['其他问题']=new Array('其他', '非RDR单');
	 cities['TS原因']=new Array('TS派错备件', 'TS诊断错误', 'TS少派件');
	 cities['DSP工程师导致']=new Array('工程师导致物损');
	 function set_tworeason(onereason, tworeason)
	 {
	     var pv, cv;
	     var i, ii;

	     pv=onereason.value;
	     cv=tworeason.value;

	     tworeason.length=1;

	     if(pv=='0') return;
	     if(typeof(cities[pv])=='undefined') return;

	     for(i=0; i<cities[pv].length; i++)
	     {
	        ii = i+1;
	        tworeason.options[ii] = new Option();
	        tworeason.options[ii].text = cities[pv][i];
	        tworeason.options[ii].value = cities[pv][i];
	     }

	 }       
</script>
</html>