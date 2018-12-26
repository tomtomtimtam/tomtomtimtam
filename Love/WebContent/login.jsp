<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<title>ログイン画面</title>

<style type="text/css">
body {
	background-image:
		url(http://farm6.static.flickr.com/5215/5522335273_d06f6159d8_b.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

table tr td {
	padding-top: 10%;
}

.bottom {
	float: right;
	margin-bottom: 15%;
	margin-right: 20px;
}

.forget {
	margin-top: 15%;
}
</style>

</head>
<body>

	<h3>ログインしてください</h3>
	<!-- エラーメッセージがあった場合表示する -->
	<s:if test="!loginIdErrorMessageList.size()==0">
		<s:iterator value="loginIdErrorMessageList">
			<s:property />
		</s:iterator>
	</s:if>
	<s:if test="!loginPasswordErrorMessageList.size()==0">
		<s:iterator value="loginPasswordErrorMessageList">
			<s:property />
		</s:iterator>
	</s:if>
	<s:form action="LoginCompleteAction">
		<table>
			<tr>
				<td>ログインID：</td>
				<td><s:textfield name="loginId" value="%{loginId}" /></td>
			</tr>
			<tr>
				<td>パスワード：</td>
				<td><s:password name="loginPassword" /></td>
			</tr>
			<tr>
				<td><s:submit value="送信" /></td>
			</tr>
		</table>

	</s:form>
	<div class="forget">
		パスワードをお忘れの場合は <br> <a
			href='<s:url action="ForgetPasswordMenAction"/>'>こちら</a>より確認してください
	</div>
	<div class="bottom">
		会員登録されていない方は <a href='<s:url action="UserCreateAction"/>'>こちら</a>
	</div>


</body>
</html>