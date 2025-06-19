<?php
if(isset($_COOKIE['user'])){
    echo "stored cookie user" . htmlspecialchars($_COOKIE['user']);
}
?>