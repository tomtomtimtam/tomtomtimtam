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
<title>ユーザー情報入力確認画面</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="top">
		<h1>ユーザー情報入力確認画面</h1>
	</div>

	<s:form action="CreateUserCompleteAction">
		<table>
			<tr>
				<td id="title">姓</td>
				<td id="body"><s:property value="%{familyName}" /></td>
			</tr>
			<tr>
				<td id="title">名</td>
				<td id="body"><s:property value="%{firstName}" /></td>
			</tr>
			<tr>
				<td id="title">姓ふりがな</td>
				<td id="body"><s:property value="%{familyNameKana}" /></td>
			</tr>
			<tr>
				<td id="title">名ふりがな</td>
				<td id="body"><s:property value="%{firstNameKana}" /></td>
			</tr>
			<tr>
				<td id="title">性別</td>
				<td id="body"><s:property value="%{sex}" /></td>
			</tr>
			<tr>
				<td id="title">メールアドレス</td>
				<td id="body"><s:property value="%{email}" /></td>
			</tr>
			<tr>
				<td id="title">ユーザID</td>
				<td id="body"><s:property value="%{loginId}" /></td>
			</tr>
			<tr>
				<td id="title">パスワード</td>
				<td id="body"><s:property value="%{password}" /></td>
			</tr>
		</table>
		<div id="form">
			<s:submit value="登録" id="submit" />
		</div>

		<!-- CreateUserCompleteActionにて使うためhiddenで受け渡し -->
		<s:hidden name="familyName" value="%{familyName}" />
		<s:hidden name="firstName" value="%{firstName}" />
		<s:hidden name="familyNameKana" value="%{familyNameKana}" />
		<s:hidden name="firstNameKana" value="%{firstNameKana}" />
		<s:if test='sex.equals("男性")'>
			<s:hidden name="sex" value="%{0}" />
		</s:if>
		<s:if test='sex.equals("女性")'>
			<s:hidden name="sex" value="%{1}" />
		</s:if>
		<s:hidden name="email" value="%{email}" />
		<s:hidden name="loginId" value="%{loginId}" />
		<s:hidden name="password" value="%{password}" />

	</s:form>

	<s:form action="CreateUserAction">
		<!-- 戻るボタンで記述内容の反映 -->
		<s:hidden name="familyName" value="%{familyName}" />
		<s:hidden name="firstName" value="%{firstName}" />
		<s:hidden name="familyNameKana" value="%{familyNameKana}" />
		<s:hidden name="firstNameKana" value="%{firstNameKana}" />
		<s:hidden name="sex" value="%{sex}" />
		<s:hidden name="email" value="%{email}" />
		<s:hidden name="loginId" value="%{loginId}" />
		<s:hidden name="password" value="%{password}" />
		<div id="form">
			<s:submit value="戻る" id="submit" />
		</div>
	</s:form>

	<%@ include file="footer.jsp"%>

</body>
</html>