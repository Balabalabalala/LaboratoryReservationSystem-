﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<%@include file="/common/header.jsp" %>
    <title>用户管理</title>
    <script type="text/javascript">
      	//全选、全反选
		function doSelectAll(){
			$("input[name=selectedRow]").prop("checked", $("#selAll").is(":checked"));		
		}
		//添加
		function doAdd(){
			document.forms[0].action="${pageContext.request.contextPath}/manage/user_addUI.action";
			document.forms[0].submit();
		}
		//编辑
		function doEdit(id){
			document.forms[0].action="${pageContext.request.contextPath}/manage/user_editUI.action?user.id="+id;
			document.forms[0].submit();
		}
		//删除
		function doDelete(id){
			document.forms[0].action="${pageContext.request.contextPath}/manage/user_delete.action?user.id="+id;
			document.forms[0].submit();
		}
		//批量删除
		function doDeleteAll(){
			document.forms[0].action="${pageContext.request.contextPath}/manage/user_deleteSelected.action";
			document.forms[0].submit();
		}
		//导出到excel
		function doExportExcel(){
			window.open("${pageContext.request.contextPath}/manage/user_exportExcel.action");
		}
		//导入excel
		function doImportExcel(){
			document.forms[0].action="${pageContext.request.contextPath}/manage/user_importExcel.action";
			document.forms[0].submit();
		}
		var list_url="${basePath}manage/user_listUI.action";
	  	function doSearch(){
	  		$("#pageNo").val(1);
		  	document.forms[0].action = list_url;
		  	document.forms[0].submit();
	  	}
    </script>
</head>
<body class="rightBody">
<form name="form1" method="post" enctype="multipart/form-data">
    <div class="p_d_1">
        <div class="p_d_1_1">
            <div class="content_info">
                <div class="c_crumbs"><div><b></b><strong>用户管理</strong></div> </div>
                <div class="search_art">
                    <li>
                        用户名：<s:textfield name="user.name" cssClass="s_text" id="userName"  cssStyle="width:160px;"/>
                    </li>
                    <li><input type="button" class="s_button" value="搜 索" onclick="doSearch()"/></li>
                    <li style="float:right;">
                        <input type="button" value="新增" class="s_button" onclick="doAdd()"/>&nbsp;
                        <input type="button" value="删除" class="s_button" onclick="doDeleteAll()"/>&nbsp;
                        <input type="button" value="导出" class="s_button" onclick="doExportExcel()"/>&nbsp;
                    	<input name="headImg" type="file"/>
                        <input type="button" value="导入" class="s_button" onclick="doImportExcel()"/>&nbsp;

                    </li>
                </div>

                <div class="t_list" style="margin:0px; border:0px none;">
                    <table width="100%" border="0">
                        <tr class="t_tit">
                            <td width="30" align="center"><input type="checkbox" id="selAll" onclick="doSelectAll()" /></td>
                            <td width="140" align="center">用户名</td>
                            <td width="140" align="center">帐号</td>
                            <td width="80" align="center">性别</td>
                            <td align="center">电子邮箱</td>
                            <td width="100" align="center">操作</td>
                        </tr>
                        <s:iterator value="pageResult.items" status="st">
                            <tr <s:if test="#st.odd">bgcolor="f8f8f8"</s:if>>
                                <td align="center"><input type="checkbox" name="selectedRow" value="<s:property value='id'/>" /></td>
                                <td align="center"><s:property value="name"/></td>
                                <td align="center"><s:property value="account"/></td>
                                <td align="center"><s:property value="gender?'男':'女'"/></td>
                                <td align="center"><s:property value="email"/></td>
                                <td align="center">
                                    <a href="javascript:doEdit('<s:property value='id'/>')">编辑</a>
                                    <a href="javascript:doDelete('<s:property value='id'/>')">删除</a>
                                </td>
                            </tr>
                     	</s:iterator>  
                    </table>
                </div>
            </div>
        <jsp:include page="/common/pageNavigator.jsp"></jsp:include>
        </div>
    </div>
</form>

</body>
</html>