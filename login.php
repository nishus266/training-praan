<?php
$uname=$_POST['uname'];
$pass=$_POST['pass'];
$con=mysql_connect('sql111.epizy.com','epiz_21750226','nishu311') ;
mysql_select_db('epiz_21750226_saved');
$query=" SELECT * FROM UserName where userName like '%{$uname}%' ";
$result= mysql_query($query);
while($row= mysql_fetch_array($result)){
if($row['userName']==$uname&&$row['pass']==$pass&&$row['pass']!=NULL)
{
session_start();
       $_SESSION['user']=$uname;

header("Location:dashboard-student.php");
    exit;
break;
}
}
echo("sorry wrong entry");
mysql_close();
?>
