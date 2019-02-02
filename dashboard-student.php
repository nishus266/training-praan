<!doctype html>

<html lang="en">

  <head>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="description" content="">

    <meta name="author" content="">

    <link rel="icon" href="../images/praan.png">


    <title>Praan Summer Training </title>


    <!-- CSS -->


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.b{
text-align:center;
background-color:#151f3c;
}
.logo{
float:left;
}
.nav{
float:right;
}
.user{
color:white;
}
.main{
width:100%;
float:left;
}
p{
color:white;
}
.profile{
float:left;
width:100%;
margin-top:40px;
}
.user1{
font-size:60px;
}
</style>
        
  </head>


 <body class="b">
    <?php
 session_start();
    if(!isset($_SESSION['user']))
   {
    header("location:index.html");
   }
   else
   {
    $var1 = $_SESSION['user'];
$con=mysql_connect('sql111.epizy.com','epiz_21750226','nishu311') ;
mysql_select_db('epiz_21750226_saved');
$query=" SELECT * FROM UserName where userName like '%{$var1}%' ";
$result= mysql_query($query);
while($row= mysql_fetch_array($result)){
$first=$row['first'];
$last=$row['last'];
$flag=$row['flag'];
}
mysql_close();

    }

?>

      <section style="float:left;width:100%;" id="header">
           <span class="logo" id="logo"><img src="../images/praan.png" width="200px" height="100px"></span>
           <div id="nav" class="nav">
                   <span><button style="width:100px;height:30px;background-color:#1295C9;" onclick="bt()">Logout</button></span>
                   <span><p id="usern" class="user"></p></span>
           </div>
       </section >
         <section class="main">
<button id="web" style="width:300px;height:40px;margin-bottom:10px;border:none;cursor:pointer;background-color:#3498db;color:white;" onclick="web()">Web Development</button>
 <button id="python" style="width:300px;height:40px;margin-bottom:10px;border:none;cursor:pointer;background-color:#3498db;color:white;" onclick="python()">Python </button>
 <button id="cpro" style="width:300px;height:40px;margin-bottom:10px;border:none;cursor:pointer;background-color:#3498db;color:white;">C programming</button>
 <button id="eth" style="width:300px;height:40px;margin-bottom:10px;border:none;cursor:pointer;background-color:#3498db;color:white;">Ethical Hacking</button>
 
     </section>

<section class="profile" id="profile">
</br>
</br>
<p class="user1" id="user1">
</br></br>
</section>
 <script>
function bt(){
window.location.assign('http://www.praan.epizy.com/index.html');
}
function web(){
window.location.assign('http://www.praan.epizy.com/summer/web.php');
}
function python(){
window.location.assign('http://www.praan.epizy.com/summer/pythonm.php');
}
var bol=  "<?php echo $first  ?>";
var mol= "<?php echo $last ?>";
var jhol=bol+" "+mol;
document.getElementById("usern").innerHTML = jhol; 
document.getElementById("user1").innerHTML = jhol; 
</script>

</body>
</html>