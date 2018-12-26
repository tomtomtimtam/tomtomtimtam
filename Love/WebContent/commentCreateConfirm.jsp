<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<title>Insert title here</title>

<style type="text/css">

</style>

</head>
<body>
	
	<h1>コメントの作成が完了しました</h1>
	
	コメントの確認をされる場合は
	<a href='<s:url action="CommentListAction"/>'>こちら</a>
	管理者画面に戻る場合は
	<a href='<s:url action="GoKanrishaAction"/>'>こちら</a>
	
</body>
</html>