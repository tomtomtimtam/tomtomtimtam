<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<title>登録者一覧</title>

<style type="text/css">
body {
 	background-image: 
 		url("http://wallpapersmp.com/image/2016/02/b672b445d2592b5a1e54206c059fd3bd.jpg"); 
	background-size: cover;
}

.user {
	width: 100%;
	text-align: center;
	margin: 0 auto;
}

.user h2{
	color: white;
}

 table { 
 	margin: 0 auto; 
 	border: 4px double black; 
 	border-radius: 15px; 
 	background-color: white; 
 } 

.main td {
	border-bottom: 4px dotted black;
}

tr td {
	padding-top: 4px;
	padding-bottom: 4px;
	padding-left: 15px;
	padding-right: 15px;
}

.return {
	float: right;
	color: white;
	margin-top: 5%;
	margin-bottom: 7%;
	margin-right: 5%;
}
</style>

</head>
<body>

	<br>
	<div class="user">
		<h2>登録者</h2>
		<table>
				<tr class="main">
					<td>ログインID</td>
					<td>パスワード</td>
					<td>ユーザーネーム</td>
					<td>年齢</td>
					<td>性別</td>
					<td>登録日時</td>
<!-- 					<td>  </td> -->
				</tr>
				<s:iterator value="list">
					<s:form action="DeleteUserAction">
						<tr>
							<td><s:property value="loginId" /></td>
							<td><s:property value="loginPassword" /></td>
							<td><s:property value="userName" /></td>
							<td><s:property value="age" /></td>
							<td><s:property value="sex" /></td>
							<td><s:property value="insert_date" /></td>
							<s:hidden name="id" value='<s:property value="id"/>' />
<%-- 							<td><s:submit value="削除" /></td> --%>
						</tr>
					</s:form>
				</s:iterator>
		</table>
	</div>

	<div class="return">
		管理者画面に <a href='<s:url action="GoKanrishaAction"/>'>もどる</a>
	</div>

</body>
</html>