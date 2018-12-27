<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<title>コメント一覧</title>

<style type="text/css">
body{
background-image:url("http://wallpapersmp.com/image/2016/02/b672b445d2592b5a1e54206c059fd3bd.jpg");
background-size:cover;
}
h2{
text-align:center;
color:white;
}
.main{
margin:0 auto;
}
table{
margin:0 auto;
background-color:white;
border:4px double black;
border-radius:20px;
}
tr td{
text-align:center;
padding-left:30px;
padding-right:30px;
padding-top:5px;
padding-bottom:5px;
border-bottom:2px dotted black;
}
.menu td{
border-bottom:4px dotted black;
}
.bottom{
float:right;
color:white;
margin-right:5%;
margin-top:5%;
margin-bottom:7%;
}

</style>

</head>
<body>
	
	<h2>タイムライン</h2>
	<div class="main">
		<table>
			<tr class="menu">
				<td>USERNAME</td>
				<td>場所</td>
				<td>時間</td>
				<td>コメント内容</td>
				<td>投稿日時</td>
				<td></td>
			</tr>
			
			<s:iterator value="list">
			<s:form action="DeleteCommentListAction">
				<tr>
					<s:hidden name="id" value='<s:property value="id"/>'/>
					<td><s:property value="userName"/></td>
					<td><s:property value="place"/></td>
					<td><s:property value="time"/><span>時</span></td>
					<td><s:property value="comment"/></td>
					<td><s:property value="insert_date"/></td>
					<td> <input type="submit" value="削除"/> </td>
				</tr>
			</s:form>
			</s:iterator>
		</table>
	</div>
	<div class="bottom">
		管理者画面に
		<a href='<s:url action="GoKanrishaAction"/>'>戻る</a>
	</div>
	
</body>
</html>