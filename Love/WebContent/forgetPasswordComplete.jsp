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

.top{
margin-top:10%;
text-align:center;
}
.main{
text-align:center;
}
.login{
margin-top:2%;
margin-bottom:2%;
}
.button{
margin-left:20%;
}
.bottom{
margin-top:10%;
margin-right:2%;
float:right;
}

</style>

</head>
<body>
	<div class="top">
		あなたのパスワードは
		<s:property value="session.loginPassword"/>
		です
	</div>
	<br>
	<br>
	<div class="main">
		以下に入力でログインができます
		<br>
		<s:form action="MenLoginCompleteAction">
			<div class="login">
				ログインID：
				<input type="text" name="loginId" placeholder="ログインID"/> 
			</div>
			<div class="login">
				パスワード：
				<input type="text" name="loginPassword" placeholder="パスワード"/> 
			</div>
			<div class="button">
				<input type="submit" value="ログイン"/>
			</div>
		</s:form>
	</div>
	
	<div class="bottom">
		トップ画面に
		<a href='<s:url action="LogoutAction"/>'>もどる</a>
	</div>
	
</body>
</html>