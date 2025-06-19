<?php
 if($_SERVER["REQUEST_METHOD"]=="POST")
 {
     $name=$_POST['name'];
     $email=$_POST['email'];
     $password=$_POST['password'];
     $gender=$_POST['gender'];
     $phone_number=$_POST['phno'];

     $country=$_POST['country'];
     
     echo "Name: " . htmlspecialchars($name) . "<br>";
     echo "Email: " . htmlspecialchars($email) . "<br>";
     echo "Password: " . htmlspecialchars($password) . "<br>";
     echo "Gender: " . htmlspecialchars($gender) . "<br>";
     echo "Phone Number: " . htmlspecialchars($phone_number) . "<br>";
     echo "Country: " . htmlspecialchars($country) . "<br>";

     if(isset($_POST['skill']))
     {
        foreach($_POST['skill'] as $skill)
        {
            echo $skill."<br>";
        }
     }

 }

?>