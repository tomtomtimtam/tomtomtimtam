<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="./images/favicon.ico">
<link rel="stylesheet" href="./css/hibiscus.css" />
<link rel="stylesheet" href="./css/form.css" />
<title>ユーザー情報入力完了画面</title>
<script>
	setTimeout('document.form.submit()', 3000)
</script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="top">
		<h1>ユーザー情報入力完了画面</h1>
	</div>
	<div class="complete">ユーザー情報入力が完了しました。</div>
	<s:form name="form" action="LoginAction">
		<s:hidden name="loginId" value="%{loginId}" />
		<s:hidden name="password" value="%{password}" />
	</s:form>

	<%@ include file="footer.jsp"%>

</body>
</html>