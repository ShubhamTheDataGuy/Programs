<?php
   session_start();

   $users=["admin"=>"1234","admin2"=>"5678"];

   if($_SERVER["REQUEST_METHOD"]=="POST")
   {
       $username=$_POST["username"];
       $password=$_POST["password"];

       if(isset($users[$username]) && $users[$username]==$password)
       {
             $_SESSION['user']=$username;
             header("Location:welcome.php");
             exit();

       }
       else
       {
           echo "invalid username or password";
           echo '<a href="loginform.html">try again</a>';

       }
   }

?>