<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>登録情報確認画面</title>

<style type="text/css">
body {
	float: right;
	background-image:
		url(http://gahag.net/img/201510/12s/gahag-0013517931-1.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

table tr td {
	padding-top: 20px;
}

input[type="submit"] {
	display: inline-block;
	text-decoration: none;
	background: rgba(0, 0, 0, 0);
	font-size: 30px;
	color: #333333;
	width: 120px;
	height: 120px;
	line-height: 120px;
	border-radius: 50%;
	text-align: center;
	vertical-align: middle;
	overflow: hidden;
	box-shadow: 0px 0px 0px 5px #ff872e;
	border: dashed 1px #FFAD90;
	transition: .4s;
}

input[type="submit"]:hover {
	background: rgba(252, 114, 46, 0.3);
	box-shadow: 0px 0px 0px 5px #fc722e;
}
</style>

</head>
<body>

	<h3>登録内容は以下でよろしいですか？</h3>
	<s:form action="UserCreateCompleteAction">
		<table>
			<tr>
				<td><label> ユーザーネーム： </label></td>
				<td><s:property value="%{userName}" escape="false" /></td>
			</tr>
			<tr>
				<td><label> ログインID： </label></td>
				<td><s:property value="%{loginId}" escape="false" /></td>
			</tr>
			<tr>
				<td><label> パスワード： </label></td>
				<td><s:property value="%{loginPassword}" escape="false" /></td>
			</tr>
			<tr>
				<td><label> 年齢： </label></td>
				<td><s:property value="%{age}" escape="false" /></td>
			</tr>
			<tr>
				<td><label> 性別： </label></td>
				<td><s:property value="%{sex}" escape="false" /></td>
			</tr>

			<s:submit value="送信" />

			<!-- UserCreateCompleteActionで使う -->
			<s:hidden name="loginId" value="%{loginId}" />
			<s:hidden name="loginPassword" value="%{loginPassword}" />
			<s:hidden name="userName" value="%{userName}" />
			<s:hidden name="age" value="%{age}" />
			<s:if test='sex.equals("男性")'>
				<s:hidden name="sex" value="男性" />
			</s:if>
			<s:if test='sex.equals("女性")'>
				<s:hidden name="sex" value="女性" />
			</s:if>
		</table>
	</s:form>

	<s:form action="UserCreateAction">
		<s:hidden name="loginId" value="%{loginId}" />
		<s:hidden name="loginPassword" value="%{loginPassword}" />
		<s:hidden name="userName" value="%{userName}" />
		<s:hidden name="age" value="%{age}" />
		<s:hidden name="sex" value="%{sex}" />

		<s:submit value="戻る" />
	</s:form>



</body>
</html>