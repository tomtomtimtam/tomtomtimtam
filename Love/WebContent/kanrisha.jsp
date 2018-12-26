<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<title>管理者画面</title>

<style type="text/css">
body{
background-image:url("http://wallpapersmp.com/image/2016/02/b672b445d2592b5a1e54206c059fd3bd.jpg");
background-size:cover;
}
h1{
text-align:center;
color:white;
}
.main{
weight:100%;
}
.left{
float:left;
width:45%;
padding-left:20px;
padding-bottom:20px;
}
.box1,.box2{
weight:200px;
background:rgba(33, 39, 98, 0);
}
.box1 .box1-title,.box2 .box2-title{
font-size:35px;
text-align:center;
font-weight:bold;
letter-spacing:1px;
color:white;
text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.5);
background:rgba(33, 39, 98, 0);
}

.right{
float:right;
width:45%;
padding-right:20px;
padding-bottom:20px;
}

input[type="submit"]{
display: inline-block;
text-decoration: none;
background:rgba(255,153,255,0.4);
width: 200px;
height: 200px;
line-height: 120px;
border-radius: 50%;
border: double 4px deeppink;
text-align: center;
vertical-align: middle;
overflow: hidden;
transition: .6s;
font-size:30px;
color:white;
}

input[type="submit"]:hover{
-webkit-transform: rotateY(360deg);
-ms-transform: rotateY(360deg);
transform: rotateY(360deg);
}
.button{
text-align:center;
padding-top:30px;
margin-top:40px;
}
footer{
clear:both;
width:100%;
height:50px;
bottom:0px;
left:0px;
color:white;
text-align:center;
line-height:50px;
}

</style>

</head>
<body>

<h1>管理者画面</h1>

<div class="main">

	<div class="left">

 		<div class="box1">
 			<div class="box1-title">ユーザー</div>
  				<div class="button">
  					<s:form action="UserCreateAction">
  						<input type="submit" value="新規登録"/>
  					</s:form>
  				</div>
  				<div class="button">
  					<s:form action="UserListAction">
  						<input type="submit" value="一覧"/>
  					</s:form>
  				</div>
 
	</div>
	</div>

	<div class="right">
		<div class="box2">
			<div class="box2-title">コメント</div>
				<div class="button">
					<s:form action="CommentCreateAction">
						<input type="submit" value="新規登録"/>
					</s:form>
				</div>
  				<div class="button">
  					<s:form action="CommentListAction">
						<input type="submit" value="一覧"/>
					</s:form>
				</div>
		</div>
	
	</div>
	

</div>
<footer>
		トップ画面にもどる場合は
		<a href='<s:url action="LogoutAction"/>'>こちら</a>
<footer>


</body>
</html>