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
.courses{
float:left;
width:100%;
text-align:center;
}
.b{
text-align:center;
background-color:#151f3c;
color:white;
font-size:20px;
}
.logo{
float:left;
}
.nav{
float:right;
}

.iframe1{
width:70%;
height:350px;
background-color:#000000;
border-radius:5px;
}
li{
color:white;
font-size:20px;
text-align:center;
}
</style>        
  </head>


 <body class="b">
    <?php
$index=$_GET['var'];
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
                   <span><p id="usern" style="color:white;"></p></span>
           </div>
       </section>
<section id="courses" class="courses">
<?php
       $con=mysql_connect('sql111.epizy.com','epiz_21750226','nishu311') ;
mysql_select_db('epiz_21750226_saved');
$query=" SELECT * FROM python where day like '%{$index}%' ; ";
$result= mysql_query($query);
while($row= mysql_fetch_array($result)){
$name=$row['name'];
$index=$row['day'];
$link=$row['link'];
$info=$row['info'];
$extra=$row['extra'];
$embed=$row['embed'];
echo("<h1 style=\"color:white;\">".$name."</h1>");
echo("</br>");
echo($info);
echo($link);
echo("</br>");
echo($extra);
echo("<h2 style=\"color:white;\">For Example</h2>");
echo("</br>");
echo("<h3 style=\"color:white;\">Click on execute button to check the output of the code</h3>");
echo("</br>");
echo($embed);
echo("<button  style=\"width:300px;height:40px;margin-bottom:10px;border:none;cursor:pointer;background-color:#3498db;color:white;\" onclick=\"mcq(".$index.")\">Next</button>");

}
mysql_close();

    

?>
     </section>
<script src="https://www.jdoodle.com/assets/jdoodle-pym.min.js" type="text/javascript"></script>
 <script>
function bt(){
window.location.assign('http://www.praan.epizy.com/index.html');

}
function mcq(b){
window.location.assign('http://www.praan.epizy.com/summer/python.php?var='+b);

}

var bol=  "<?php echo $first  ?>";
var mol= "<?php echo $last ?>";
var jhol=bol+" "+mol;
document.getElementById("usern").innerHTML = jhol; 

</script>

</body>
</html>