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
<title>パスワード再設定</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="top">
		<h1>パスワード再設定画面</h1>
	</div>

	<!-- エラーメッセージがあった場合は表示する -->

	<s:if test="!loginIdErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="%{loginIdErrorMessageList}">
				<s:property /><br>
			</s:iterator>
		</div>
		<br>
	</s:if>
	<s:if test="!passwordErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="%{passwordErrorMessageList}">
				<s:property /><br>
			</s:iterator>
		</div>
		<br>
	</s:if>
	<s:if test="!passwordIncorrectErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="%{passwordIncorrectErrorMessageList}">
				<s:property /><br>
			</s:iterator>
		</div>
		<br>
	</s:if>
	<s:if test="!newPasswordErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="%{newPasswordErrorMessageList}">
				<s:property /><br>
			</s:iterator>
		</div>
		<br>
	</s:if>
	<s:if test="!reConfirmationNewPasswordErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="%{reConfirmationNewPasswordErrorMessageList}">
				<s:property /><br>
			</s:iterator>
		</div>
	</s:if>
	<br>
	<s:if test="!newPasswordIncorrectErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="%{newPasswordIncorrectErrorMessageList}">
				<s:property /><br>
			</s:iterator>
		</div>
	</s:if>
	<s:form action="ResetPasswordConfirmAction">
		<table id="table">
			<tr>
				<td id="title">ユーザID</td>
				<td id="body"><s:textfield class="formInput" name="loginId"
						value="%{loginId}" placeholder="ユーザID" /></td>
			</tr>
			<tr>
				<td id="title">現在のパスワード</td>
				<td id="body"><s:password class="formInput" name="password"
						placeholder="パスワード" /></td>
			</tr>
			<tr>
				<td id="title">新しいパスワード</td>
				<td id="body"><s:password class="formInput" name="newPassword"
						placeholder="新しいパスワード" /></td>
			</tr>
			<tr>
				<td id="title">（再確認用）</td>
				<td id="body"><s:password class="formInput"
						name="reConfirmationNewPassword" placeholder="新しいパスワード（再確認用）" /></td>
			</tr>
		</table>
		<div id="form">
			<s:submit value="確認" id="submit" />
		</div>
	</s:form>

	<%@ include file="footer.jsp"%>

</body>
</html>