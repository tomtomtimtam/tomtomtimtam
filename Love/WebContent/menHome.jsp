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
<title>Mens Home画面</title>

<style type="text/css">
body {
	margin: 0;
	padding: 0;
	background-image:
		url("https://azukichi.net/season/img/winter/winter-back053.jpg");
	background-size: cover;
}

header {
	top: 0;
	left: 0;
	background-color: #C2EEFF;
	width: 100%;
	height: 50px;
}

header #home {
	float: left;
	line-height: 20px;
	margin-right: 20%;
	color:#FFFFEE;
}

header ul {
	float: right;
	line-height: 20px;
}

header ul li {
	float: left;
	list-style: none;
	padding-right: 50px;
}

.main {
	width: 70%;
	margin: 0 auto;
	margin-top: 40px;
	margin-bottom: 10%;
}

body h2 {
	text-align: center;
	color: white;
}

.main {
	clear: both;
}

.main table {
	margin: 0 auto;
}

.main table tr td {
	padding-left: 30px;
	padding-right: 30px;
}

.main table #koumoku td {
	color: white;
}

.main {
	position: relative;
	margin-bottom: 10px;
	margin-top: 5%;
	padding: 0.5em 1em;
	border: solid 3px #75A9FF;
	border-radius: 8px;
}

.main .title {
	position: absolute;
	display: inline-block;
	top: -13px;
	left: 10px;
	padding: 0 9px;
	margin-left: 30%;
	line-height: 1;
	font-size: 25px;
	background: #75A9FF;
	color: white;
	font-weight: bold;
}

.main .title::before {
	position: absolute;
	content: '';
	top: 100%;
	left: 0;
	border: none;
	border-bottom: solid 15px transparent;
	border-right: solid 20px rgb(149, 158, 155);
}

#list {
	position: relative;
	margin-bottom: 10px;
	margin-top: 5%;
	padding: 0.5em 1em;
	border: solid 3px #95ccff;
	border-radius: 8px;
	background-color: white;
}

#list .box-title {
	position: absolute;
	display: inline-block;
	top: -13px;
	left: 10px;
	padding: 0 9px;
	line-height: 1;
	font-size: 19px;
	background: white;
	color: #95ccff;
	font-weight: bold;
}

#list .inform {
	margin-left: 0;
	padding-right: 5%;
	width:10%;
}

#list .comment {
	margin-left: 10%;
	width:40%;
	word-break:break-all;
}

#list .date {
	float: right;
	margin-right: 0px;
	padding-right: 0px;
}
</style>

</head>
<body>

	<!-- 掲示板形式　女性HOME画面の掲示板を表示させ、男性HOMEからは見るONLY 記入はできない -->
	<!-- MyPageにとぶリンク作成 -->

	<header>
		<ul id="home">
			<li>Home画面</li>
		</ul>
		<ul>
			<li><a href='<s:url action="MyPageAction"/>'>アカウント</a></li>
			<li><a href='<s:url action="LogoutAction"/>'>ログアウト</a></li>
		</ul>
	</header>

	<div class="main">
		<span class="title"> タイムライン </span>
		<form action="MyPageAction">
			<s:iterator value="session.list">
				<div id="list">
					<span class="box-title"><s:property value="userName" /></span> 
					<span class="inform"><s:property value="place" /></span> 
					<span class="inform"><s:property value="time" /><span>時</span></span> 
					<span class="comment"><s:property value="comment" /></span> 
					<span class="date"><s:property value="insert_date" /></span>
				</div>
			</s:iterator>

		</form>
	</div>

</body>
</html>