<?php
     
   session_start();
include("../scripts/identifiants.php");
         
     if($_GET['part']=="Participer")
	 {
	 $user = mysql_real_escape_string($_GET['user']);
	 $event = mysql_real_escape_string($_GET['event']);

	 mysql_query("insert into eventuser (iduser,idevent) values('".$user."','".$event."')")or die(mysql_error());
	 mysql_query("update event set nbpart = nbpart+1 where id='".$event."'")or die(mysql_error());
	 }
	 if($_GET['part']=="Annuler")
	 {
		mysql_query("delete from eventuser where idevent='".$event."' and iduser = '".$user."' ")or die(mysql_error());
		mysql_query("update event set nbpart = nbpart-1 where id='".$event."'")or die(mysql_error());
	 }
	 if($_GET['part']=="Supprimer")
	 {
		mysql_query("delete from event where id='".$event."' ")or die(mysql_error());
	 }
    ?>