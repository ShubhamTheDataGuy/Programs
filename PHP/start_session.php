<?php
session_start();
if($_SERVER["REQUEST_METHOD"]=="POST" && isset($_POST['username']))
{
     $_SESSION['username']=htmlspecialchars($_POST['username']);

     echo "session username : " . $_SESSION['username'];
}
else if(isset($_SESSION['username']))
{
    echo "session already in progress for : ".$_SESSION['username'];
}
else
{
    echo "no session found";
}
?>