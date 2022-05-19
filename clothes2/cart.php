
<?php
   session_start();
   include('connect.php');
   $products = !empty($_SESSION['cart']) ? $_SESSION['cart'] : [];

?>

<?php
   // if(isset($_GET['action'])=='dangxuat'){
   //    unset($_SESSION['login']);
   //    header('Location:index.php');
   // }
?>
<!doctype html>
<html class="no-js" lang="zxx">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="x-ua-compatible" content="ie=edge">
      <title>Cart - eCommerce Bootstrap4 Template</title>
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- Favicon -->
      <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
      <!-- all css here -->
      <link rel="stylesheet" href="assets/css/bootstrap.min.css">
      <link rel="stylesheet" href="assets/css/animate.css">
      <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
      <link rel="stylesheet" href="assets/css/chosen.min.css">
      <link rel="stylesheet" href="assets/css/ionicons.min.css">
      <link rel="stylesheet" href="assets/css/font-awesome.min.css">
      <link rel="stylesheet" href="assets/css/material-design-iconic-font.min.css">
      <link rel="stylesheet" href="assets/css/meanmenu.min.css">
      <link rel="stylesheet" href="assets/css/bundle.css">
      <link rel="stylesheet" href="assets/css/style.css">
      <link rel="stylesheet" href="assets/css/responsive.css">
      <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
     
   </head>
   <body>
      <!-- Add your site or application content here -->
      <?php
        include('pages/menu.php');
      ?>
      <!--breadcrumb area start-->
      <div class="breadcrumb_container">
         <div class="container-fluid">
            <div class="row">
               <div class="col-12">
                  <nav>
                     <ul>
                        <li><a href="index.php"><strong style="color:#f24c74">Home ></strong></a></li>
                        <li>Cart</li>
                     </ul>
                  </nav>
               </div>
            </div>
         </div>
      </div>
      <!--breadcrumb area end-->
      <?php 
         // if(isset($_SESSION['login']))
         { if(isset($_SESSION['cart'])){
      ?>
      <div class="cart_main_area">
         <div class="container">
            <div class="row">
               <div class="col-12">
               
                  <form action="carts/add.php">
                     <div class="table-content table-responsive">
                     
                        <table>
                           <thead>
                              <tr>
                                 <th class="img-thumbnail">STT</th>
                                 <th class="product-name">IMAGE</th>
                                 <th class="product-name">NAME</th>
                                 <th class="product-price">COST</th>
                                 <th class="product-quantity">SIZE</th>
                                 <th class="product-quantity">QUANTY</th>
                                 <th class="product-subtotal">TOTAL</th>
                                 <th class="product-xoa">DELETE</th>
                              </tr>
                           </thead>
                           <tbody>
                              <?php 
                                 $tongtien = 0;
                                 $n = 0;
                                 $t = 0;
                                 foreach($products as $item) {
                                    // $sizeao = $db->query("SELECT * FROM size WHERE id = $item['size'] ");
                                    $thanhtien = $item['quantity'] * $item['price'];
                                    $tongtien += $thanhtien;
                                    $t += $item['quantity'];
                                    $n++;
                                    $name = $item['size'];
                                    $query1 = $db->query("SELECT * FROM size WHERE id = $name");
                                    $pro1 = $query1->fetch_object();
                                 
                              ?>
                              <tr>
                                 <td><?php echo $n ?></td>
                                 <td><img src="assets/img/product/<?= $item['image'] ?>" alt="" width="80"></td>
                                 <td><?php echo $item['name'] ?></td>
                                 <td><?php echo number_format($item['price']) ?>đ</td>
                                 <td>
                                 <?php echo $pro1->namesize ?>
                                 </td>
                                 <td>
                                    <form action="carts/add.php" method='get'>
                                    <input type="hidden" name="id" value = "<?= $item['id']; ?>">
                                    <input type="hidden" name="action" value="update">
                                    <input type="number" min="1" name="quantity" value="<?=  $item['quantity'];?>" style="width: 60px;background-color:white;">
                                    <input type="submit" value="UPDATE" style="width: 120px; background-color:#f24c74; color:white; font-weight:700;">
                                    </form>
                                 </td>
                                 <td><?php echo number_format($thanhtien) ?>VND</td>
                                 <td class="product-remove"><a href="carts/add.php?id=<?php echo $item['id'];?>&action=delete"><strong style="color:red">X</strong></a></td>
                              </tr>
                              <?php 
                                 }
                              ?>
                           </tbody> 
                              <tr>
                                 <td colspan="8">
                                    <!-- <p >TỔNG TIỀN :  <?php echo number_format($tongtien) ?>đ</p><p></p> -->
                                    <p style="float:right; padding-right:20px;"><a href="carts/add.php?xoatatca=1"><strong style="color:red">DEL ALL </strong></a> </p>
                                 </td>
                              </tr>   
                              
                              <!-- <td colspan="7">
                                    <p style="text-align: center;"> HIỆN BẠN KHÔNG CÓ SẢN PHẨM NÀO </p>
                                    <p style="text-align: center;"> HÃY MUA THÊM GÌ ĐÓ Ở WEBSITE NHÉ </p>
                              </td>
                              -->
                        </table>
                     </div>

                     <div class="row table-responsive_bottom">
                        <div class="col-lg-7 col-sm-7 col-md-7">
                           <div class="buttons-carts">
                              <a href="index.php"> Buy Continue </a>   
                           </div>
                        </div>
                        <div class="col-lg-5 col-sm-5 col-md-5">
                           <div class="cart_totals  text-right">
                              <h2>Bill</h2>
                              <div class="cart-subtotal">
                                 <span>Product cost</span>    
                                 <span><?php echo number_format($tongtien) ?>đ</span>    
                              </div>
                              <div class="cart-subtotal">
                                 <span>Ship</span>    
                                 <span>30,000đ</span>    
                              </div>
                              <div class="order-total">
                                 <span><strong>TOTAL</strong> </span>          
                                 <span><strong><?php echo number_format($tongtien+30000) ?>đ </strong> </span>
                              </div>
                              <div class="wc-proceed-to-checkout">
                              <?php if($t <= 10){?>
                                 <a href="checkout.php">TO ORDER</a>
                              <?php }else {?>
                                 <a href=""  onclick="alert('Bạn chỉ mua tối đa 10 sản phẩm')">TO ORDER</a>
                              <?php }?>   
                              </div>
                           </div>
                        </div>
                     </div>
                      
                  </form>
                  
               </div>
            </div>
         </div>
      </div>
      <?php
                     }else{ ?>
                        <br>
                        <p style="text-align: center;"> HIỆN BẠN KHÔNG CÓ SẢN PHẨM NÀO </p>
                        <p style="text-align: center;"> HÃY MUA THÊM GÌ ĐÓ Ở WEBSITE NHÉ </p>
                  
                        
                     <?php }} ?>  
                              
      
      <!--organicfood wrapper start--> 
      <?php
        include('pages/footer.php');
      ?>
      <!--organicfood wrapper end--> 
      <!-- all js here -->
      <script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
      <script src="assets/js/popper.js"></script>
      <script src="assets/js/bootstrap.min.js"></script>
      <script src="assets/js/isotope.pkgd.min.js"></script>
      <script src="assets/js/imagesloaded.pkgd.min.js"></script>
      <script src="assets/js/jquery.counterup.min.js"></script>
      <script src="assets/js/waypoints.min.js"></script>
      <script src="assets/js/ajax-mail.js"></script>
      <script src="assets/js/owl.carousel.min.js"></script>
      <script src="assets/js/plugins.js"></script>
      <script src="assets/js/main.js"></script>
   </body>
</html>