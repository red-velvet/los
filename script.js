$(function(){
  $("#loginform").dialog({
    autoOpen: false,
    show:{
      effect:"blind",
      duration:1000
    },
    hide:{
      effect:"explode",
      duration:1000
    }
  });
  $("#enter").click(function() {
    $("#loginform").dialog("open");
  });
});

$(function(){
  $("#rankpage").dialog({
    autoOpen: false,
    show:{
      effect:"blind",
      duration:1000
    },
    hide:{
      effect:"explode",
      duration:1000
    }
  });
  $("#rank").click(function() {
    $("#rankpage").dialog("open");
  });
});

function join_change(){
document.getElementsByTagName("span")[0].innerHTML="Join";
document.getElementsByTagName("form")[0].action="?join";
document.getElementById("butt").innerHTML="<input type=submit value='join'>";
}
