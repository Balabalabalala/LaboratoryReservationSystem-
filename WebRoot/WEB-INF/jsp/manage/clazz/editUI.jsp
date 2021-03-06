<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/common/header.jsp"%>
    <title>班级管理</title>
</head>
<body class="rightBody">
<form id="form" name="form" action="${basePath }manage/clazz_saveEdit.action" method="post" enctype="multipart/form-data">
    <div class="p_d_1">
        <div class="p_d_1_1">
            <div class="content_info">
    <div class="c_crumbs"><div><b></b><strong>班级管理</strong>&nbsp;-&nbsp;编辑班级</div></div>
    <div class="tableH2">编辑班级</div>
    <table id="baseInfo" width="100%" align="center" class="list" border="0" cellpadding="0" cellspacing="0"  >
         <tr>
            <td class="tdBg" width="200px">班级号：</td>
            <td><s:textfield name="clazz.cnumber" /></td>
        </tr>
        <tr>
            <td class="tdBg" width="200px">专业：</td>
            <td>
            	<s:textfield name="clazz.cname" />
            </td>
        </tr>
        <tr>
            <td class="tdBg" width="200px">班级人数：</td>
            <td>
            	<s:textfield name="clazz.snumber" />
            </td>
        </tr>
        <tr>
            <td class="tdBg" width="200px">状态：</td>
            <td><s:radio list="#{'1':'有效','0':'无效'}" name="clazz.clazzState"/></td>
        </tr>
    </table>
    <s:hidden name="clazz.clazzId"/>
    <div class="tc mt20">
        <input type="submit" class="btnB2" value="保存" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button"  onclick="javascript:history.go(-1)" class="btnB2" value="返回" />
    </div>
    </div></div></div>
   
</form>
</body>
</html>