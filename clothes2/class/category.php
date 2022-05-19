<?php
    class category{
        
        public function getAll($db){
            $sql = "SELECT * FROM category";
            $row = mysqli_query($db,$sql);
            while($result = $row->fetch_object()){
                $temp[] = $result; 
            }           
            return $temp; 
        }

        public function add($cate,$db){
            $query = "INSERT into category(CategoryID,Name,Description) 
                        VALUES('".$cate['CategodyID']."','".$cate['Name']."',
                        '".$cate['Description']."')";         
            $db->query($query);           
            
        }
    }
?>        