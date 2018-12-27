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
	background-color: #FF5192;
}

.body {
	margin: 1%;
	padding: 1%;
	border: 4px deeppink solid;
	border-radius: 10px;
	background:linear-gradient(to bottom,white,#EEEEEE);
}

.main {
	top: 0;
	left: 0;
	width: 100%;
	text-align: center;
}

.left {
	float: left;
	width: 55%;
	font-family: 'arial unicode ms', sans-serif;
	color: #FF367F;
}

.left .title {
	font-family: 'Comic Sans MS', cursive;
	font-size: 100px;
	margin-top: 15%;
	margin-bottom: 20%;
}

.left .info {
	margin-left: 10%;
}
.left .info h4{
font-size:20px;
}
.right {
	float: right;
	width: 35%;
	margin-right: 3%;
	margin-top: 7%; 
	position : relative;
	background: #FFBEDA;
	box-shadow: 0px 0px 0px 5px #FFBEDA;
	border: dashed 2px deeppink;
	padding: 0.2em 0.5em;
	color: #454545;
	position: relative;
}

.right:after {
	position: absolute;
	content: '';
	right: -7px;
	top: -7px;
	border-width: 0 35px 35px 0;
	border-style: solid;
	border-color: deeppink #fff deeppink;
	box-shadow: -3px 3px 3px rgba(0, 0, 0, 0.15);
}
.right .login{
margin-top:20%;
margin-bottom:30%;
color:#FFFFEE;
}

.right .error {
	border: 2px red solid;
	border-radius: 8px;
	color: red;
	background-color: #FF82B2;
	margin-top: 3%;
	padding-left: 3%;
	padding-top: 0.5%;
	padding-bottom: 0.5%;
	font-size: 12px;
}

.right table {
	margin: 5% auto;
}

.right table tr td {
	padding-top: 5%;
	padding-bottom: 5%;
}

.right .submit {
	float: right;
	margin-right: 10%;
	margin-top:10%;
	margin-bottom:3%;
}

.right .submit:hover {
	cursor: pointer;
}

.bottom {
	clear: both;
	weight: 100%;
	height: 25%;
	margin-top: 3%;
	padding-top: 6%;
	margin-bottom: 5%;
	padding-left: 50%;
	color:#FF367F;
	font-weight:bold;
}
input[type="text"] , input[type="password"]{
background-color:#EEEEEE;
}
 input[type="submit"] { 
 	width:70px;
 	height:40px;
 } 
.button {
	float: right;
	font-family: 'Zapfino', sans-serif;
	font-size: 20px;
	margin-top:2%;
	margin-bottom:5%;
	margin-right: 10%;
}

.button:hover {
	cursor: pointer;
}
</style>

</head>
<body>
	<div class="body">
		<div class="main">
			<div class="left">
				<div class="title">Tomder</div>
				<div class="info">
					<h4>Tomderは大人の為のSNS(Social Network Service)です。</h4>
					<br><br>
					*18歳未満のご入場はご遠慮下さい
				</div>
			</div>

			<div class="right">
				<div class="login">
					既にアカウントをお持ちの方は<br>こちらからログインしてください
					<!-- エラーメッセージがあった場合表示する -->
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
					<s:if test="!userEqualsErrorMessageList.size()==0">
						<div class="error">
							<s:iterator value="userEqualsErrorMessageList">
								<s:property />
								<br>
							</s:iterator>
						</div>
					</s:if>
					<s:form action="LoginAction">
						<table>
							<tr>
								<td>ログインID：</td>
								<td><s:textfield name="loginId" value="%{loginId}" /></td>
							</tr>
							<tr>
								<td>パスワード：</td>
								<td><s:password name="loginPassword" /></td>
							</tr>
						</table>
						<a href='<s:url action="ForgetPasswordAction"/>'>パスワードを忘れた方はこちら</a>
						<br>
						<s:submit value="ログイン" class="submit" />
					</s:form>
				</div>
			</div>
		</div>
		<div class="bottom">
			アカウントをお持ちでない方はアカウント作成をしてください <br>
			<s:form action="UserCreateAction">
				<s:submit value="新規登録" class="button" />
			</s:form>
		</div>
	</div>
</body>
</html>