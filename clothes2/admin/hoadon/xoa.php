<?php
    include("../../connect.php");
    
    $id = $_GET['id'];
    {
        $sql_xoa = "UPDATE cart SET cart_status=3 Where Id = '$id' ";
        $query = mysqli_query($db,$sql_xoa);
        // $sql_xoa1 = "DELETE FROM cart Where Id = '$id' ";
        // mysqli_query($db,$sql_xoa1);
        header("Location:index.php");
    }
?>