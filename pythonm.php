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
}
.logo{
float:left;
}
.nav{
float:right;
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
                   <span><p id="usern"></p></span>
           </div>
       </section>
<section id="courses" class="courses">
<?php
       $con=mysql_connect('sql111.epizy.com','epiz_21750226','nishu311') ;
mysql_select_db('epiz_21750226_saved');
$query=" SELECT * FROM python ; ";
$result= mysql_query($query);
while($row= mysql_fetch_array($result)){
$name=$row['name'];
$index=$row['day'];
echo("<button style=\"width:300px;height:40px;margin-bottom:10px;border:none;cursor:pointer;background-color:#3498db;color:white;margin-top:20px;\" onclick=\"ft(".$index.")\">".$name."</button>");

}
mysql_close();

    

?>
     </section>
 <script>
function bt(){
window.location.assign('http://www.praan.epizy.com/summer/index.html');

}
var bol=  "<?php echo $first  ?>";
var mol= "<?php echo $last ?>";
var jhol=bol+" "+mol;
document.getElementById("usern").innerHTML = jhol; 
function ft(b){
window.location.assign('http://www.praan.epizy.com/summer/pythonc.php?var='+b);
}
</script>

</body>
</html>