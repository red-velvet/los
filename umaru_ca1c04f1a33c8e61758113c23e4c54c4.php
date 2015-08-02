
<?php
  include "./config.php";
  login_chk();
  dbconnect();

  function reset_flag(){
    $new_flag = substr(md5(rand(10000000,99999999)."qwer".rand(10000000,99999999)."asdf".rand(10000000,99999999)),8,16);
    $chk = @mysql_fetch_array(mysql_query("select id from prob_umaru where id='{$_SESSION[los_id]}'"));
    if(!$chk[id]) mysql_query("insert into prob_umaru values('{$_SESSION[los_id]}','{$new_flag}')");
    else mysql_query("update prob_umaru set flag='{$new_flag}' where id='{$_SESSION[los_id]}'");
    echo "reset ok";
    highlight_file(__FILE__);
    exit();
  }

  if(!$_GET[flag]){ highlight_file(__FILE__); exit; }

  if(preg_match('/prob|_|\./i', $_GET[flag])) exit("No Hack ~_~");
  if(preg_match('/id|where|order|limit|,/i', $_GET[flag])) exit("HeHe");
  if(strlen($_GET[flag])>100) exit("HeHe");

  $realflag = @mysql_fetch_array(mysql_query("select flag from prob_umaru where id='{$_SESSION[los_id]}'"));

  @mysql_query("create temporary table prob_umaru_temp as select * from prob_rubiya where id='{$_SESSION[los_id]}'");
  @mysql_query("update prob_umaru_temp set flag={$_GET[flag]}");

  $tempflag = @mysql_fetch_array(mysql_query("select flag from prob_umaru_temp"));
  if((!$realflag[flag]) || ($realflag[flag] != $tempflag[flag])) reset_flag();

  if($realflag[flag] === $_GET[flag]) solve("umaru");
?>
