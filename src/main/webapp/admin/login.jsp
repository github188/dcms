<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 transitional//EN" "http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>XFCMS管理中心登陆 </title>
<base href="<%=basePath%>">
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv=Content-Type content="text/html; charset=utf-8" />
<link href="css/login.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.4.2.min.js"></script>
<script src="js/login.js"></script>

</head>
<body>

<table cellspacing="0" cellpadding="0" width="100%" bgcolor="#002779" border=0 style="margin-top:100px" align="center">
  <tr>
    <td align="center">
    <table cellspacing=0 cellpadding=0 width=468 border=0 align="center">
        <tr>
          <td><img height=23 src="images/login_1.jpg" width="468" /></TD>
        </tr>
        <tr>
          <TD><img height=147 src="images/login_2.jpg" width=468 /></TD>
        </tr>
      </TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=468 bgColor=#ffffff border=0 align="center">
        <tr>
          <TD width=16><IMG height=122 src="images/login_3.jpg" 
            width=16></TD>
          <td align="center">
          
          <table width=366 border=0 align="center" cellPadding=0 cellSpacing=0>
             <form onsubmit="return false;" action="checklogin" method="post"
								id="form_login">
                <tr>
                  <TD width="50" height="30">用户名：</TD>
                  <TD width="150" align="left"><input name="username" id="username" class="input" maxlength="10" /></TD>
                  
                  <TD width="166" align="left">
                  		<span id="error_name" style="color:#FF0000;">
                  			<s:property value="errors.username[0]"/>
                  		</span>
                  </td>
                </tr>
                <tr>
                  <TD width="50" height="30">口　令：</TD>
                  <TD align="left" >
               <input type="password" name="password" id="password" class="input" maxlength="10" /></TD>
                  <TD width="166" align="left" ><span id="error_pass"  style="color:#FF0000;"></span></TD>
                </tr>
                <tr height=28>
                  <TD width="50">验证码：</TD>
                  <TD height="26" colspan="2" align="left" valign="middle">
	                  <input name="verifyCode" id="verifyCode" class="input_verify" />
	                  <img id="imgCode" onclick="reflashCode()" src="verifycode" align="absbottom" style="cursor:pointer;">
	                  &nbsp;&nbsp;&nbsp;<span id="error_verify"  style="color:#FF0000;"></span>
	                  
                  	<%-- ${VerifyCode} --%>
                  </TD>
                </tr>
                <tr height=5>
                  <TD colSpan=3></TD>
                </tr>
                <tr>
                  <TD width="50">&nbsp;</TD>
                  <TD colspan="2" align="left" style="padding-left:0px;!important padding-left:4px;"><input type="submit" class="button" value="进入管理中心" id="enter"/></TD>
                </tr>
              </form>
          </TABLE>
          
          </TD>
          <TD width=16><IMG height=122 src="images/login_4.jpg" 
            width=16></TD>
        </tr>
      </TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=468 border=0 align="center">
        <tr>
          <TD><IMG height=16 src="images/login_5.jpg" 
          width=468></TD>
        </tr>
      </TABLE></TD>
  </tr>
</TABLE>
</BODY>
</HTML>

