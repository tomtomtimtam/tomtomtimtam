<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<title>パスワード確認画面</title>

<style type="text/css">

h1{
text-align:center;
}
.list{
margin-bottom:1%;
}

.bottom{
margin-top:3%;
float:right;
}

</style>

</head>
<body>
	
	<h1>パスワードをお忘れですか？</h1>
	
	<h3>パスワードの確認のため<br>
	ログインIDとユーザーネームを入力してください</h3>
	
	<div class="men">
		<s:form action="ForgetPasswordCompleteMenAction">
			<s:if test='errorMessage != ""'>
				<s:property value="errorMessage" escape="false"/>
			</s:if>
			<div class="list">
				<input type="text" name="loginId" placeholder="ログインID"/> <br>
			</div>
			<div class="list">
				<input type="text" name="userName" placeholder="ユーザーネーム"/> <br>
			</div>
			<div class="list">
				<input type="submit" value="送信"/>
			</div>
		</s:form>
	</div>
	
	<div class="bottom">
		ログイン画面に戻る方は
		<a href='<s:url action="LoginMenAction"/>'>こちら</a>
	</div>
	
	
</body>
</html>