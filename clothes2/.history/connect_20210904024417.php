<?php
    // $db = new mysqli('localhost','root','','qlbh');
    // $db->set_charset('utf8');
    $db = mysqli_connect('localhost','root','','qlbh');
    if(mysqli_connect_errno())
    {
        die ("Connection failed: " . mysqli_connect_error());
    }
?>
