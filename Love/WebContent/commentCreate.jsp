<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<title>コメント新規作成</title>

<style type="text/css">

</style>

</head>
<body>
	
	
	<h2>新規コメントを入力してください</h2>
	<s:form action="CommentCreateConfirmAction">
		
		<table>
			<s:if test='errorMessage !=""'>
   					<s:property value="errorMessage" escape="false"/>
  			</s:if>
			<tr>
				<td> 名前： </td>
				<td> <input type="text" name="userName" value="管理者"/> </td>
			</tr>
			<tr>
				<td> 場所 </td>
				<td> <input type="text" name="place"/> </td>
			</tr>
			<tr>
				<td> 希望する時間帯： </td>
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
				</td>
			</tr>
			<tr>
				<td> つぶやき内容 </td>
				<td> <input type="text" name="comment" placeholder="80文字以内"/> </td>
			</tr>
			<s:submit value="投稿"/>
		</table>
	</s:form>
	
	<div class="bottom">
		管理者画面に
		<a href='<s:url action="GoKanrishaAction"/>'>戻る</a>
	</div>
	
	
</body>
</html>