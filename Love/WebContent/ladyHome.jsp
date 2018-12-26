<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/script"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>Ladys Home画面</title>

<style type="text/css">

/* body{ */
/* background-image:url("https://images-na.ssl-images-amazon.com/images/I/71%2BWaZv8HEL._SY606_.jpg"); */
/* } */
header{
position:absolute;
top:0;
left:0;
background-color:deeppink;
width:100%;
height:40px;
}
header #home{
float:left;
line-height:20px;
}
header ul{
float:right;
line-height:20px;
}

header ul li{
float:left;
list-style:none;
color:white;
padding-right:50px;
}

.main{
clear:both;
margin-top:40px;
margin-left:0px;
width:100%;
height:500px;
}

.left{
float:left;
width:35%;
margin-top:5%;
margin-left:1.5%;
padding: 0.2em 0.5em;
color: #565656;
background: #ffeaea;
box-shadow: 0px 0px 0px 10px #ffeaea;
border: dashed 2px #ffc3c3;
border-radius: 8px;
font-size:13px;
}
.left .submit{
float:right;
}
input[type="text"]{
background-color:#FFD5EC;
color:black;
}
select{
border:white;
background-color:#FFD5EC;
}
input[type="submit"]{
width:60px;
height:30px;
position: relative;
display: inline-block;
font-weight: bold;
text-decoration: none;
color: #FFF;
text-shadow: 0 0 5px rgba(255, 255, 255, 0.73);
padding: 0.3em 0.5em;
background:#FFABCE;
border:none;
border-top: solid 3px #FF82B2;
border-bottom: solid 3px #FF82B2;
transition: .4s;
}

.right{
float:right;
width:55%;
position:relative;
margin-bottom:5%;
margin-top:5%;
padding:0.5em 1em;
border:solid 3px pink;
border-radius:8px;
background:#FFEEFF;
}
.right .right-title {
position:absolute;
display: inline-block;
top: -13px;
left: 10px;
padding: 0 9px;
margin-left:30%;
line-height: 1;
font-size: 25px;
background:pink;
color: white;
font-weight: bold;
}

.right .right-title::before{
position:absolute;
content:'';
top:100%;
left:0;
border:none;
border-bottom:solid 15px transparent;
border-right:solid 20px rgb(149,158,155);
}

.box1{
position:relative;
margin-bottom:10px;
margin-top:5%;
padding:0.5em 1em;
border:solid 3px #FFABCE;
border-radius:8px;
}
.box1 .box-title {
position:absolute;
display: inline-block;
top: -13px;
left: 10px;
padding: 0 9px;
line-height: 1;
font-size: 19px;
background:#FFEEFF;
color:#FFABCE;
font-weight: bold;
}

.box1 p {
margin: 0; 
padding: 0;
}

input[type="submit"]:hover {
text-shadow: -6px 0px 15px rgba(255, 255, 240, 0.83), 6px 0px 15px rgba(255, 255, 240, 0.83);
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
			<li> <a href='<s:url action="MyPageAction"/>'>アカウント</a> </li>
			<li> <a href='<s:url action="SupportLadyAction"/>'>お客様サポート</a>  </li>
			<li> <a href='<s:url action="LogoutAction"/>'>ログアウト</a> </li>
		</ul>
	</header>

	<div class="main">
		<div class="left">
		
			<s:form action="LadyCommentCompleteAction">
				<s:if test='errorMessage !=""'>
   					<s:property value="errorMessage" escape="false"/>
  				</s:if>
  				<table>
  					<tr>
						<td> <input type="text" name="userName" value='<s:property value="#session.userName"/>'> </td>
					</tr>
					
					<tr>
						<td> <input type="text" name="place" placeholder="希望する場所"/> </td>
					</tr>
					
					<tr>
						<td> 
							<select name="time">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17" selected>17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
							</select>
							時
						</td>
					</tr>
					<tr>
						<td> <input type="text" name="comment" placeholder="コメント内容:80文字以内"/> </td>
					</tr>
				</table>
				<div class="submit">
					<input type="submit" value="投稿"/>
				</div>
			
			</s:form>
		
		</div>
	
		<div class="right">
			<span class="right-title">
				タイムライン
			</span>
			<s:iterator value="session.list">
			<form action="MyPageAction"></form>
				<div class="box1">
					<span class="box-title"><s:property value="userName"/></span>
					<s:property value="place"/>
					<s:property value="time"/><span>時</span>
					<s:property value="comment"/>
					<s:property value="insert_date"/>
				</div>
			</form>
			</s:iterator>
		
		</div>
	
	
	</div>

</body>
</html>