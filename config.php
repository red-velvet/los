<?php

function linkHash($name){
  return md5($name."H3l10 +rub1y4 = hehe * W0RLD");
}

function dbconnect(){
  header("Content-Type: text/html; charset=UTF-8");
  session_start();
  $mysql_hostname="localhost";
  $mysql_user="los";
  $mysql_password="123";
  $mysql_database="los";
  $db=mysql_connect($mysql_hostname,$mysql_user,$mysql_password) or die("db connection error");
  mysql_select_db($mysql_database,$db) or die("db connection error2");
  mysql_query("set names utf8",$db);
}

function login_chk(){
  SESSION_START();
  $id = $_SESSION['los_id'];
  if(!$id) exit ("<script>location.href='./';</script>");
}

$monster_list = array(
  "gate", "gremlin", "cobolt", "goblin", "orc",
  "wolfman", "darkelf", "orge", "troll", "vampire",
  "skeleton", "golem", "darkknight", "bugbear", "giant",
  "assassin", "zombie_assassin", "succubus", "nightmare", "xavis",
  "dragon", "iron_golem", "dark_eyes", "hell_fire", "evil_wizard",
  "umaru","AllClear"
);

$monster_link = array("gate.php");
for($monster_i=1;$monster_i<=count($monster_list);$monster_i++){
  $monster_link[$monster_i] = $monster_list[$monster_i] . "_" . linkHash($monster_list[$monster_i]) . ".php";
}

function solve($monster_name){
  global $monster_list;
  for($i=1;$i<count($monster_list)+1;$i++){
    if($monster_list[$i] == $monster_name) $solved = $i;
  }
  $q = "select level from user_db where id='{$_SESSION[los_id]}'";
  $result = @mysql_fetch_array(mysql_query($q));
  $now_level = $result['level'];
  if($now_level == $solved){
    $query = "update user_db set lastauth=now(),level=(level+1) where id='{$_SESSION[los_id]}'";
    mysql_query($query);
  }
  $tmp = strtoupper($monster_list[$solved]);
  echo "<h2>{$tmp} Clear!</h2>";
}
?>
