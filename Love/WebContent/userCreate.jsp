<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/script" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>新規登録画面</title>

<style type="text/css">
body {
	background-image:
		url(https://cdn.dears.media/topic_element/3f309027-8d96-421c-bfad-4eeb6f4fc2ec.jpeg);
	background-repeat: no-repeat;
	background-size: cover;
	color: white;
}

h3 {
	text-align: center;
}

.box {
	margin-top: 30px;
	margin-bottom: 40px;
}

.bottom {
	float: right;
	bottom: 0px;
	right: 0px;
	margin-top: 10%;
}

.button {
	margin-left: 10%;
}

input[type="submit"] {
	width: 60px;
	height: 25px;
	display: inline-block;
	padding: 0.5em 1em;
	text-decoration: none;
	color: white;
	border: dashed 1px #ff872e;
	background: rgba(252, 114, 46, 0.4);
	border-radius: 3px;
	transition: .4s;
}

* /

 input[type="submit"]:hover {
	background: #ff651a;
	color: white;
}
</style>

</head>
<body>

	<h3>NEW PERSON</h3>
	<!-- エラーメッセージがあった場合は表示する -->
	<s:if test="!userNameErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="userNameErrorMessageList">
				<s:property />
				<br>
			</s:iterator>
		</div>
	</s:if>
	<s:if test="!loginIdErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="loginIdErrorMessageList">
				<s:property />
				<br>
			</s:iterator>
		</div>
	</s:if>
	<s:if test="!loginPasswordErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="loginPasswordErrorMessageList">
				<s:property />
				<br>
			</s:iterator>
		</div>
	</s:if>
	<s:if test="!loginIdEqualsErrorMessageList.size()==0">
		<div class="error">
			<s:iterator value="loginIdEqualsErrorMessageList">
				<s:property />
				<br>
			</s:iterator>
		</div>
	</s:if>


	<s:form action="UserCreateConfirmAction">
		<table>
			<tr>
				<td class="box"><label> ユーザーネーム： </label> <s:textfield
						name="userName" value="%{userName}" placeholder="ユーザーネーム" /></td>
			</tr>
			<tr>
				<td class="box"><label> ログインID： </label> <s:textfield
						name="loginId" value="%{loginId}" placeholder="ログインID" /></td>
			</tr>
			<tr>
				<td class="box"><label> パスワード： </label> <s:password
						name="loginPassword" placeholder="パスワード" /></td>
			</tr>
			<tr>
				<td class="box"><label> 年齢： </label> <s:select name="age"
						list="#session.ageList" headervalue="%{age}">
					</s:select></td>
			</tr>
			<tr>
				<td class="box"><label> 性別： </label> <s:radio name="sex"
						list="%{#session.sexList}" value="%{sex}" /></td>
			</tr>
			<tr>
				<td class="button"><s:submit value="登録" /></td>
			</tr>
		</table>
	</s:form>

	<div class="bottom">
		<span>前画面に戻る場合は</span> <a href='<s:url action="GoTopAction"/>'>こちら</a>
	</div>



</body>
</html>