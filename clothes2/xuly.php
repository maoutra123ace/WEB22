<?php 
    include("connect.php");
    session_start();
    if(isset($_GET['trangthai'])){
        $id = $_GET['trangthai'];
        $sql_update = "UPDATE cart SET cart_status=2 WHERE Id='".$id."'";
        $query = mysqli_query($db,$sql_update);
        header('Location:my-account.php');
    }
    if(isset($_GET['xoa'])){
        $id = $_GET['xoa'];
        $sql_xoa = "DELETE FROM cart_details Where id_cart = '$id' ";
        mysqli_query($db,$sql_xoa);
        $sql_xoa1 = "DELETE FROM cart Where Id = '$id' ";
        mysqli_query($db,$sql_xoa1); 
        header('Location:my-account.php');
    }
    elseif(isset($_POST['sua'])){
        $id_khachhang = isset($_SESSION['id_khachhang']) ? $_SESSION['id_khachhang'] : 0;
        $tenuser = $_POST['name'];
       
        $address = $_POST['address'];
        $phone = $_POST['phone'];
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $date = date_create();
        $updated_at = date('Y-m-d H:s:i');
        $sql_sua= "UPDATE user set name='".$tenuser."' ,address='".$address."' ,phone='".$phone."',updated_at='".$updated_at."' where id = '$id_khachhang' ";    
        mysqli_query($db,$sql_sua);
        header('Location:my-account.php');
    }

?>