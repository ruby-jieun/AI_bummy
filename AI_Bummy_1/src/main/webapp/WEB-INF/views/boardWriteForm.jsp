<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  /> 
<% request.setCharacterEncoding("UTF-8"); %> 

<head>
<meta charset="UTF-8">
<title>글쓰기창</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>

<script type="text/javascript">
 // 리스트로 돌아가기
  function backToList(){location.href="../boardList";}
</script>

</head>
<body>
<div class="container">
<h1 style="text-align:center">글쓰기</h1>
  <form name="articleForm" method="post" action="../boardWrite" enctype="multipart/form-data">
    <table>
	
		<tr>
			<td >작성자 :</td>
			<!-- 작성자 ID or NAME를 쿠키로 받아서 자동으로 작성되도록 -->
			<td colspan=2  ><input type="text" size="50" maxlength="100" placeholder="(로그인 아이디로 자동 입력됩니다)" readonly style="background:lightgray"/> </td>
		</tr>
		
     	<tr>
		   <td >글제목 : </td>
		   <td colspan="2"><input type="text" size="50"  maxlength="300" name="board_title" /></td>
	 	</tr>
	 	
	 	<tr>
			<td valign="top"><br>글내용 : </td>
			<td colspan=2><textarea name="board_content" rows="10" cols="53" maxlength="4000"></textarea> </td>
     	</tr>
     	
     	
     	<!-- 파일 관련한건 도무지 이해가 안됨... -->
     	<tr>
		 	<td >파일 첨부 :  </td>
		 	<td> <input type="file" name="file" /></td>		
	   	</tr>
					    <script type="text/javascript">
							  var cnt=1;
							  function fn_addFile(){
								  $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"' />");
								  cnt++;
							  }  
				  		</script>
	   	<tr>
			<td colspan="4"><div id="d_file"></div></td>
	   	</tr>
	   
	   
		<tr>
	   		<td></td>
	      	<td colspan="2" ><input type="submit" value="글쓰기"><input type="button" value="목록보기" onClick="backToList()"/></td>
		</tr>
	</table>
  </form>
</div>
</body>
</html>

