<?php
  include "config.php";
  login_chk();
  dbconnect();
?>
<head>
<title>Lord of SQLinjection</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<script src="./script.js"></script>
<link rel=stylesheet href=style.css>
  <script>
  $(function() {
    $( document ).tooltip();
  });
  </script>
  <style>
  label {
    display: inline-block;
    width: 5em;
  }
  </style>
</head>
<body bgcolor=black><center><font color=white>
<h2>Lord of SQLinjection</h2>
<?php
  $rank_r = mysql_query("select level,id from user_db where id != 'rubiya' order by level desc, lastauth asc limit 20");
  $id = $_SESSION['los_id'];
  $q = "select * from user_db where id='{$id}'";
  $r = @mysql_fetch_array(mysql_query($q));
  $level = $r['level'];
  echo "id : <strong>{$id}</strong><br>pwning : <strong>{$monster_list[$level]}</strong><br><br><a id=\"rank\">Stat</a><br><br>";
  for($i=1;$i<$level;$i++){
    if(($i-1) % 5 == 0) echo "<br><br>";
    echo "<a href='{$monster_link[$i]}'><img src='./img/{$monster_list[$i]}.png' class='pwned' title='{$monster_list[$i]}' target='_blank'></a> => \n";
  }
  if(($i-1) % 5 == 0) echo "<br><br>";
  echo "<a href='{$monster_link[$i]}'><img src='./img/{$monster_list[$i]}.png' height=130 width=130 border=10 title='{$monster_list[$i]}' target='_blank'></a> => \n";
  for($i=$level+1;$i<count($monster_list);$i++){
    if(($i-1) % 5 == 0) echo "<br><br>";
    echo "<img src='./img/{$monster_list[$i]}.png' title='{$monster_list[$i]}' target='_blank'>\n";
    if($i+1 != count($monster_list))echo " => ";
  }
?><br><br><br><br><br><br>
<div id="rankpage" title="Top 20">
<?php
  for($i=1;$i<=20;$i++){
    $rank1 = @mysql_fetch_array($rank_r);
    echo $rank1[id] . " - {$monster_list[$rank1[level]]}<br>\n";
  }
?>
</div>
