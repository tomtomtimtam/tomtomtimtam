<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>エラー</title>
</head>
<body>

	<h1>エラーが発生しました</h1>
	
	<h2>戻るボタンよりやり直してください</h2>
	
<!-- 	できない場合はサポートページへ -->
	
	<h2></h2>
	
	<s:form action="UserCreateAction">
		<s:submit value="戻る"/>
	</s:form>
	
	


</body>
</html>