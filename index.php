<?php
SESSION_START();

if($_SESSION['los_id']){
  exit ("<script>location.href='./gate.php';</script>");
}

if($_SERVER['QUERY_STRING'] == "join"){
  if(preg_match('/_|\'|\\\|\./i', $_POST['id'])) exit("No Hack ~_~");
  if(preg_match('/_|\'|\\\|\./i', $_POST['pw'])) exit("No Hack ~_~");
  if(strlen($_POST['id']) > 20) exit("id too long");
  if(strlen($_POST['id']) < 3) exit("id too short");
  if(strlen($_POST['pw']) < 3) exit("pw too short");
  $_POST['pw'] = md5($_POST['pw']);
  include "config.php";
  dbconnect();
  $query = "select id from user_db where id='{$_POST[id]}'";
  $result = @mysql_fetch_array(mysql_query($query));
  if($result['id']) exit("id exist");
  else{
    $time = time();
    mysql_query("insert into user_db(`id`,`pw`,`lastauth`) values('{$_POST[id]}','{$_POST[pw]}',now())");
    $_SESSION['los_id'] = $result['id'];
    echo "<script>location.href='./gate.php';</script>";
  }
  exit;
}

elseif($_SERVER['QUERY_STRING'] == "login"){
  if(preg_match('/_|\'|\\\|\./i', $_POST['id'])) exit("No Hack ~_~");
  $_POST['pw'] = md5($_POST['pw']);
  include "config.php";
  dbconnect();
  $query = "select id from user_db where id='{$_POST[id]}' and pw='{$_POST[pw]}'";
  $result = @mysql_fetch_array(mysql_query($query));
  if($result['id']){
    $_SESSION['los_id'] = $result['id'];
	exit("<script>location.href='./gate.php';</script>");
  }
  else exit("<script>alert('login fail');history.go(-1);</script>");
}
?>
<head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<script src="./script.js"></script>
<link rel="stylesheet" href="./style.css">
</head>
<body bgcolor="black"><br><br><pre><font color="white">
        ! this site does not support IE
                                                    _______________________
          _______________________-------------------                       `\
         /:--__                                                              |
        ||&lt; &gt; |                                   ___________________________/
        | \__/_________________-------------------                         |
        |                                                                  |
         |        The Lord of the SQLI : The Fellowship of the SQLI, 2015  |
         |                                                                  |
         |                                                                  |
          |       <a id="enter" style="cursor:pointer">[enter to the dungeon]</a>                                    |
          |                                                                  |
          |                                                                  |
          |       [RULE]                                                     |
           |      - do not attack other database                              |
           |      - do not exploit server                                     |
           |      - do not dos server                               [      ] |
          |                                              ____________________|_
          |  ___________________-------------------------                      `\
          |/`--_                                                                 |
          ||[ ]||                                            ___________________/
           \===/___________________--------------------------


</font></pre>
<div id="loginform" title="Login">
<form method="post" action="?login">
id : <input name="id"><br>
pw : <input name="pw" type="password"><br>
<div id="butt" align="right"><input type="button" onClick="join_change();" value="Join"> <input type="submit" value="Login"></div>
</form>
</div>
</body>
