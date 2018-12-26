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
<title>新規ユーザー登録完了画面</title>

<style type="text/css">
body {
	float: right;
	background-image:
		url(https://dr62aec5n2ky3.cloudfront.net/uploads/albums/1665/large_4.jpg?v=1455214920);
	background-repeat: no-repeat;
	background-size: cover;
}

h3 {
	margin-top: 20px;
	padding-left: 30%;
}

.login {
	margin-top: 20%;
}
.bottom {
	margin-top: 10%;
	margin-right: 10%;
}
</style>

</head>
<body>

	<div class="main">
		<div class="top">
			<h1>新規ユーザーが登録されました</h1>
		</div>
		<div class="top">
			<h3>さぁ、はじめよう！</h3>
		</div>
		<br>
		<div class="login">
			ログインする方は <a href='<s:url action="LoginAction"/>'>ログイン</a>画面よりログインしてください
		</div>
		<div class="bottom">
			トップ画面に戻る方は <a href='<s:url action="LogoutAction"/>'>こちら</a>
		</div>

	</div>

</body>
</html>