<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="shortcut icon" href="./images/favicon.ico">
<link rel="stylesheet" href="./css/hibiscus.css" />
<link rel="stylesheet" href="./css/form.css" />
<title>ユーザー情報入力</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="top">
		<h1>ユーザー情報入力画面</h1>
	</div>
	<!-- エラーメッセージがあった場合は表示する -->
	<s:if test="!familyNameErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="familyNameErrorMessageList">
				<s:property /><br>
			</s:iterator>
		</div>
		<br>
	</s:if>
	<s:if test="!firstNameErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="firstNameErrorMessageList">
				<s:property /><br>
			</s:iterator>
		</div>
		<br>
	</s:if>
	<s:if test="!familyNameKanaErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="familyNameKanaErrorMessageList">
				<s:property /><br>
			</s:iterator>
		</div>
		<br>
	</s:if>
	<s:if test="!firstNameKanaErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="firstNameKanaErrorMessageList">
				<s:property /><br>
			</s:iterator>
		</div>
		<br>
	</s:if>
	<s:if test="!emailErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="emailErrorMessageList">
				<s:property /><br>
			</s:iterator>
		</div>
		<br>
	</s:if>
	<s:if test="!loginIdErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="loginIdErrorMessageList">
				<s:property /><br>
			</s:iterator>
		</div>
		<br>
	</s:if>
	<s:if test="!errorMessageList.size()==0">
		<div class="error">
			<s:iterator value="errorMessageList">
				<s:property /><br>
			</s:iterator>
		</div>
		<br>
	</s:if>
	<s:if test="!passwordErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="passwordErrorMessageList">
				<s:property /><br>
			</s:iterator>
		</div>
		<br>
	</s:if>

	<!-- 入力内容をCreateUserConfirmActionにて処理 -->
	<s:form action="CreateUserConfirmAction">
		<table>
			<tr>
				<td id="title">姓</td>
				<td id="body"><s:textfield class="formInput" name="familyName"
						value="%{familyName}" placeholder="姓" /></td>
			</tr>
			<tr>
				<td id="title">名</td>
				<td id="body"><s:textfield class="formInput" name="firstName"
						value="%{firstName}" placeholder="名" /></td>
			</tr>
			<tr>
				<td id="title">姓ふりがな</td>
				<td id="body"><s:textfield class="formInput"
						name="familyNameKana" value="%{familyNameKana}"
						placeholder="姓ふりがな" /></td>
			</tr>
			<tr>
				<td id="title">名ふりがな</td>
				<td id="body"><s:textfield class="formInput"
						name="firstNameKana" value="%{firstNameKana}" placeholder="名ふりがな" /></td>
			</tr>
			<tr>
				<td id="title">性別</td>
				<td id="body"><s:radio name="sex" list="%{#session.sexList}"
						value="%{sex}" /></td>
			</tr>
			<tr>
				<td id="title">メールアドレス</td>
				<td id="body"><s:textfield class="formInput" name="email"
						value="%{email}" placeholder="メールアドレス" />
			</tr>
			<tr>
				<td id="title">ユーザID</td>
				<td id="body"><s:textfield class="formInput" name="loginId"
						value="%{loginId}" placeholder="ユーザID" /></td>
			</tr>
			<tr>
				<td id="title">パスワード</td>
				<td id="body"><s:password class="formInput" name="password"
						placeholder="パスワード" /></td>
			</tr>
		</table>
		<div id="form">
			<s:submit value="確認" id="submit" />
		</div>
	</s:form>
	<div class="margin"></div>

	<%@ include file="footer.jsp"%>

</body>
</html>