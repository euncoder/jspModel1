<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<style type="text/css">
.center {
	margin: auto;
	width: 60%;
	border: 3px solid #ff0000;
	padding: 10px;
}
</style>
</head>
<body>

<h2>회원가입</h2> <!--회원가입정보창 만들기-->
<p>환잉환잉</p>

<div class="center">

<form action="regiAf.jsp">  <!--회원가입 후 이동할jsp  -->

<table border="1">
<tr>
	<td>아이디</td> <!-- 아이디창 -->
<td>
	<input type="text" name="id" id="id" size="20"><br>
	<p id="idcheck" style="font-size: 8px"></p> <!-- 사용할 수 있는 아이디인지 -->
	<input type="button" id="idChkBtn" value="id확인">
</td>
</tr>
<tr>
	<td>패스워드</td>  <!-- 비번창 -->
	<td>
		<input type="text" name="pwd" id="pwd" size="20">
	</td>
</tr>
<tr>
	<td>이름</td>  <!-- 이름 -->
	<td>
		<input type="text" name="name" size="20">
	</td>
</tr>
<tr>
	<td>email</td>  <!-- email -->
	<td>
		<input type="email" name="email"  size="20">
	</td>
</tr>
<tr>
<td colspan="2" align="center">
	<input type="submit" value="회원가입">
</td>

</tr>

</table>
</form>
</div>

<script type="text/javascript">
$(document).ready(function() {
	
	$("#idChkBtn").click(function() {
		
		//id 빈칸조사!
		
		$.ajax({
			type:"post",
			url:"idcheck.jsp",
			data:{"id":$("#id").val()},
			success:function(msg){
				//alert('success');
				//alert(msg.trim());
				
				if(msg.trim()== "YES"){
					$("#idcheck").css("color","#0000ff");
					$("#idcheck").text("사용할 수 있는 ID");
				} else{
					$("#idcheck").css("color","#ff0000");
					$("#idcheck").text("사용중인 ID");
					$("#id").val("");
				}
				
			},
			error:function(){
				alert('error');
			}
		});
	});
});


</script>




</body>
</html>