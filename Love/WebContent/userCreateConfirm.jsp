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
	background-image:
		url(http://gahag.net/img/201510/12s/gahag-0013517931-1.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}
h2{
text-align:center;
color:white;
}
.confirm{
width:45%;
float:left;
font-size:24px;
color:white;
}
table{
width:100%;
}
table tr td {
	padding-top:3%;
	margin-left:12%;
	float:left;
}
.submit{
margin-top:0;
margin-left:140%;
}
input[type="submit"] {
	display: inline-block;
	text-decoration: none;
	background: rgba(255, 130, 96, 0.3);
	font-size: 30px;
	color: white;
	width: 100px;
	height: 100px;
	line-height: 100px;
	border-radius: 50%;
	text-align: center;
	vertical-align: middle;
	overflow: hidden;
	box-shadow: 0px 0px 0px 5px #ff872e;
	border: dashed 1px #FFAD90;
	transition: .4s;
}

input[type="submit"]:hover {
	background: rgba(255, 108, 61, 0.5);
	box-shadow: 0px 0px 0px 5px #fc722e;
}
.return{
width:45%;
float:right;
}
.returnButton {
float:right;
margin-right:102%;
margin-top:67.7%;
}
</style>

</head>
<body>

	<h2>登録内容は以下でよろしいですか？</h2>
	<div class="confirm">
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
				<tr>
					<td><s:submit value="送信" class="submit"/><td>
				</tr>
			</table>
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
		</s:form>
	</div>
	<div class="return">
		<s:form action="UserCreateAction">
			<s:hidden name="loginId" value="%{loginId}" />
			<s:hidden name="loginPassword" value="%{loginPassword}" />
			<s:hidden name="userName" value="%{userName}" />
			<s:hidden name="age" value="%{age}" />
			<s:hidden name="sex" value="%{sex}" />
			<s:submit value="戻る" class="returnButton" />
		</s:form>
	</div>

</body>
</html>