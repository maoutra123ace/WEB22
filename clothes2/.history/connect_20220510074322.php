<?php
    // $db = new mysqli('localhost','root','','clothes');
    // $db->set_charset('utf8');
    $db = mysqli_connect('localhost','root','','clothes');
    if(mysqli_connect_errno())
    {
        die ("Connection failed: " . mysqli_connect_error());
    }
?>
