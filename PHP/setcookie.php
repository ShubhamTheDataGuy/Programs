<?php
 if($_SERVER["REQUEST_METHOD"]=="POST")
 {
    if(isset($_POST['name']))
    {
        $name=htmlspecialchars($_POST['name']);
        setcookie("user",$name,time()+86400);
        echo "cookie has been set for user: " . $name;
    }
    else
 {
    echo "cookie not set";
 }
 }
 else
 {
    echo "cookie not set";
 }
?>