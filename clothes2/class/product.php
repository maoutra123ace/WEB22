<?php
    class vegetable{
        
        public function getAll($db){
            $sql = "SELECT * FROM product";
            $row = mysqli_query($db,$sql);
            while($result = $row->fetch_object()){
                $temp[] = $result; 
            }           
            return $temp; 
        }

        public function getListByCateID($cateid,$db){
            $sql = "SELECT * FROM product WHERE groupid=$cateid";
            $row = mysqli_query($db,$sql);
            $result = mysqli_fetch_object($row);
            return $result;  
        }
        
        public function getListByCateIDs($cateids,$db){
            for($i=0;$i<count($cateids);$i++){
                $sql = "SELECT * FROM product WHERE groupid =".$cateids[$i]."";
                $row = mysqli_query($db,$sql);
                while($result = $row->fetch_object()){
                    $temp[] = $result; 
                }   
            }
            return $temp;
        }

        public function getByID($vegetableid,$db){
            $sql = "SELECT * FROM product WHERE id=$vegetableid";
            $row = mysqli_query($db,$sql);
            $result = mysqli_fetch_object($row);
            return $result;  
        }

        public function add($veget,$db){
            $query = "INSERT INTO product(id,name,detail,price,soluong,image,groupid,updated_at) 
            VALUE('".$id."','".$name."','".$mota."','".$gia."','".$soluong."','".$image."','".$iddanhmuc."','".$created_at."')";
            $db->query($query);           
            
        }
        
    }
?>