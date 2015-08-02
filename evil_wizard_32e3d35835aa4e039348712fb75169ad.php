<?php
  include "./config.php"; 
  login_chk(); 
  dbconnect(); 
  if(preg_match('/_|\.|\(\)/i', $_GET[limit])) exit("No Hack ~_~");
  if(preg_match('/union|where|hellfire/i', $_GET[limit])) exit("hehe");
  if($_GET[limit]) $limit = $_GET[limit];
  else $limit = 1;
  $query = "select id from probevilwizard where id='admin' limit {$limit}";
  $result = @mysql_fetch_array(mysql_query($query));
  if(mysql_error()) exit();
  echo "<hr>query : <strong>{$query}</strong><hr><br>";
  
  $_GET[pw] = addslashes($_GET[pw]);
  $query = "select pw from probevilwizard where id='admin' and pw='{$_GET[pw]}'";
  $result = @mysql_fetch_array(mysql_query($query));
  if(($result['pw']) && ($result['pw'] == $_GET['pw'])) solve("evil_wizard");
  highlight_file(__FILE__);
?>
