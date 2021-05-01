<html>
   <meta charset="utf-8">
<?php
 
$host = 'Bummy_34.233.254.189';
$user = 'bummy';
$pw = 'qjal';
$dbName = 'user_info';
$mysqli = new mysqli($user_id, $user_pw, $user_name, $user_phone, $user_email, $user_belong, $user_type);
 
 $user_id=$_POST['user_id'];
 $user_pw=($_POST['user_pw']);
 $user_name=$_POST['user_name'];
 $user_phone=$_POST['user_phone'];
 $user_email=$_POST['user_email']; 
 $user_belong=$_POST['user_belong'];
 $user_type=$_POST['user_type'];

 
 $sql = "insert into member (user_id, user_pw, user_name, user_phone, user_email, user_belong, user_type)";             // (입력받음)insert into 테이블명 (column-list)
 $sql = $sql. "values('$user_id, $user_pw, $user_name, $user_phone, $user_email, $user_belong, $user_type)";         // calues(column-list에 넣을 value-list)
 if($mysqli->query($sql)){                                                              //만약 sql로 잘 들어갔으면
  echo 'success inserting <p/>';                                                            //success inserting 으로 표시
  echo $name.'님 가입 되셨습니다.<p/>';                                   // id님 안녕하세요.
 }else{                                                                                //아니면
  echo 'fail to insert sql';                                                            //fail to insert sql로 표시
 }
mysqli_close($mysqli);
 
 
?>
<input type="button" value="로그인하러가기" onclick="location='index.php'">
</html>
