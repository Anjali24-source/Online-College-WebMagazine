<?php
session_start();

unset($_SESSION['uname']);
unset($_SESSION['ROLE']);
unset($_SESSION['IS_LOGIN']);

session_destroy();
header("location:login.php");
?>