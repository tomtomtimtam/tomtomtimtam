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
<title>トップ画面</title>

<style type="text/css">
body {
	background-image:
		url(https://swoonproduction.s3.amazonaws.com/media/images/love-romance-heart-sunset-hands-sh.2e16d0ba.fill-620x413.jpg);
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.main {
	top: 0;
	left: 0;
	weight: 100%;
	text-align: center;
	margin-top: 10%;
}

.left {
	float: left;
	width: 50%;
	font-size: 20px;
	color: white;
}

.left .men {
	font-family: 'Skia', sans-serif;
}

.left .lady {
	font-family: 'Skia', sans-serif;
	margin-top: 60px;
}

@import url(https://fonts.googleapis.com/css?family=Amatic+SC);

.moji {
	font-family: 'Amatic SC', cursive;
}

.right {
	float: right;
	width: 50%;
	font-size: 20px;
}

.bottom {
	display: inline-block;
	crear: both;
	weight: 100%;
	height: 25%;
	padding-top: 37%;
	color: white;
}

input[type="submit"] {
	display: inline-block;
	padding: .2em 2.5em;
	border: 2px solid white;
	border-radius: .4em 2em .5em 3em/3em .5em 2em .5em;
	font-family: 'Zapfino', sans-serif;
	text-decoration: none;
	text-align: center;
	background: rgba(0, 0, 0, 0);
	color: white;
}

.button {
	font-family: 'Zapfino', sans-serif;
	font-size: 20px;
}
</style>

</head>
<body>

	<div class="main">
		<div class="left">

			<div class="login">
				ログインする方はこちらから
				<s:form action="LoginAction">
					<s:submit value="ログイン" />
				</s:form>
			</div>

		</div>

		<div class="right"></div>

		<div class="bottom">
			アカウントをお持ちでない方はアカウント作成をしてください <br>
			<s:form action="UserCreateAction">
				<input type="submit" value="新規登録" class="button" />
			</s:form>
		</div>

	</div>

</body>
</html>