<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="./images/favicon.ico">
<link rel="stylesheet" href="./css/hibiscus.css" />
<link rel="stylesheet" href="./css/form.css" />
<title>パスワード再設定確認</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="top">
		<h1>パスワード再設定確認画面</h1>
	</div>
	<s:form action="ResetPasswordCompleteAction">
		<table>
			<tr>
				<td id="title">ユーザID</td>
				<td id="body"><s:property value="loginId" /></td>
			</tr>
			<tr>
				<td id="title">新しいパスワード</td>
				<td id="body"><s:property value="concealPassword" /></td>
			</tr>
		</table>
		<div id="form">
			<s:submit value="パスワード再設定" id="submit" />
		</div>
		<s:hidden name="loginId" value="%{loginId}" />
		<s:hidden name="newPassword" value="%{newPassword}" />
	</s:form>
	<s:form action="ResetPasswordAction">
		<s:hidden name="loginId" value="%{loginId}" />
		<s:hidden name="newPassword" value="%{newPassword}" />
		<div id="form">
			<s:submit value="戻る" id="submit" />
		</div>
	</s:form>

	<%@ include file="footer.jsp"%>
</body>
</html>