<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<title>MyPage画面</title>

<style type="text/css">
/*  body {  */
/*  	background-image:  */
/*  		url("https://images-na.ssl-images-amazon.com/images/I/71%2BWaZv8HEL._SY606_.jpg");  */
/*  	background-size: cover;  */
/*  }  */
body {
	margin: 0;
	padding: 0;
	 background-color:#FFFFDD;
}

.body {
	margin: 3%;
	padding: 3%; 
	background-color : white;
	border: double deeppink 3px;
	background:linear-gradient(to bottom,white,#FFFFEE);
}

h1 {
	text-align: center;
	color: deeppink;
	font-size:40px;
}
.main{
font-size:22px;
}
.info {
	text-align: center;
	margin-top: 1%;
	margin-bottom: 1%;
	color: #000033;
}

table {
	width: 95%;
	margin: 0 auto;
	border: 5px double deeppink;
	background-color: white;
}

table tr td {
	text-align: center;
}

table .title td {
	border-bottom: 5px double #FFAAFF;
	border-collapse: collapse;
}

table .main td {
	border-bottom: 2px dotted #FFAAFF;
}

.bottom {
	margin-top: 3%;
	margin-bottom: 5%;
	margin-left: 38%;
	font-size:20px;
}

.submit {
	width:50px;
	margin-top: 3%;
	margin-left: 14%;
}

input[type="submit"] {
	border: 2px solid deeppink;
	border-radius:13px;
	background-color:white;
}
</style>
<script>
	// function goDeleteLadyCommentAction(element) {
	// 	var id_value = element.id;
	// 	var id = document.getElementById('selectedId0').value = id_value;
	// 	document.getElementById('form-user-info-list').action = "DeleteLadyCommentAction";
	// }
</script>

</head>
<body>
	<div class="body">
		<h1>MyPage</h1>

		<div class="main">
			<div class="info">
				ログインID：
				<s:property value="loginId" />
			</div>
			<div class="info">
				パスワード：
				<s:property value="loginPassword" />
			</div>
			<div class="info">
				ユーザーネーム：
				<s:property value="userName" />
			</div>
			<div class="info">
				年齢：
				<s:property value="age" />
				歳
			</div>
			<div class="info">
				性別：
				<s:property value="sex" />
			</div>
			<s:if test='sex.equals("女性")'>
				<table>
					<tr class="title">
						<td>場所</td>
						<td>希望日時</td>
						<td>コメント内容</td>
						<td>コメント日時</td>
						<td></td>
					</tr>
					<s:iterator value="list">
						<tr class="main">
							<td><s:property value="place" /></td>
							<td><s:property value="time" /></td>
							<td><s:property value="comment" /></td>
							<td><s:property value="insert_date" /></td>
							<s:hidden name="id" value="%{id}" />
							<%-- 						<td><s:submit id="%{#st.index}" value="削除" --%>
							<%-- 										onclick="DeleteLadyCommentAction(this);" /></td> --%>
						</tr>
					</s:iterator>
					<s:hidden name="loginId" value="%{loginId}" />
				</table>
			</s:if>
		</div>
		<div class="bottom">
			ホーム画面に戻る方は
			<form action="GoHomeAction">
				<s:submit value="ホーム" class="submit" />
				<s:hidden name="sex" value="%{sex}" />
			</form>
		</div>

	</div>
</body>
</html>