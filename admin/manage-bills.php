
<?php
session_start();
include('include/config.php');

if(strlen($_SESSION['alogin'])==0)
{	
header('location:index.php');
}

else
{
date_default_timezone_set('Asia/Kolkata');// change according timezone
$currentTime = date( 'd-m-Y h:i:s A', time () );

}

?>

  		  
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin | Manage Users</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
	
	<style>
	
	#show
{
    display:none;
}



	</style>
	<script>
function myFunction() {
  alert("Copy the  link for share your bill!<br> localhost/final/admin/view-bill.php?bill_no=5");
}
</script>
</head>

<body>
<?php include('include/header.php');?>

	<div class="wrapper">
		<div class="container-fluid">
			<div class="row">
<?php include('include/sidebar.php');?>				
			<div class="span10">
					<div class="content">

	<div class="module">
							<div class="module-head">
							
								<h3>Manage Bills</h3>
								
	<div style="margin-left:620px;margin-top:-22px;">
									
    <form name="search" method="post" action="">
	
            <input class="search-field" placeholder="Search" name="product" required="required" style="padding-left:10px;border-color:darkgrey;border-radius:100px;width:200px;height:25px;font-weight:bold;font-size:14px;" />

            <button class="btn btn-success" type="submit" name="search" style="font-weight:bold;font-size:16px;height:30px;border-radius:200px;width:90px;border-color:darkgrey;"> search </button>   
        
    </form>
	
	</div>
	



							</div>
							
					
							
							<div class="module-body table">
							
							<table cellpadding="0" cellspacing="0" border="0" class="table table-bordered table-striped	 display" width="100%">
																	
				<tbody>
				
				<thead>
									
				<tr style="background-color:lightgreen;">
											
				<th class="cart-romove item" style="text-align:center;font-weight:bold;">Bill No</th>
				<th class="cart-product-name item" style="text-align:center;font-weight:bold;">User Name</th>
				<th class="cart-qty item" style="text-align:center;font-weight:bold;">Order Date</th>
				<th class="cart-sub-total item" style="text-align:center;font-weight:bold;">Payment Method</th>
				<th class="cart-total item" style="text-align:center;font-weight:bold;" colspan="2" width="140px">Action</th>
										
				</tr>
										
				</thead>
				
				</tbody>
				
				</table>
								
													
<?php $query=mysqli_query($con,"select orders.bill_no,orders.orderDate,orders.paymentMethod,orders.userId,orders.id,users.name from orders join users on orders.userId=users.id GROUP BY orders.bill_no"); ?>

<?php while($row=mysqli_fetch_array($query)){
	?>
				<table cellpadding="0" cellspacing="0" border="0" class="table table-bordered display" width="100%">
																	
				<tbody>
				
			
				
				<tr>
				
					<td width="87px" style="text-align:center;"><?php echo $row['bill_no']; ?>  </td>
					<td width="137px" style="text-align:center;"><?php echo $row['name']; ?>  </td>
					<td width="137px" style="text-align:center;"><?php echo $row['orderDate']; ?>  </td>
					<td width="199px" style="text-align:center;"><?php echo $row['paymentMethod'];?> </td>
					
					<td style="text-align:center;" colspan="2"> 
					<button type="button" onclick="show()" name="view" class="btn btn-primary" style="width:80px;border-radius:50px;"> <a href="view-bills.php?var='<?php echo $row['bill_no'];?>'" style="text-decoration:none;color:white;"> View </a> </button> 
					<button type="button" onclick="myFunction()" name="share" class="btn btn-warning" style="width:80px;border-radius:50px;"> Share </button> 
					</td>
			
				</tr>
				
				</tbody>
				
				</table>
										
<?php 
} 
?>		
							
					</div>
					</div>
							

					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

<?php include('include/footer.php');?>

	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	<script src="scripts/datatables/jquery.dataTables.js"></script>
	
	<script>
	
		$(document).ready(function() 
		{
			$('.datatable-1').dataTable();
			$('.dataTables_paginate').addClass("btn-group datatable-pagination");
			$('.dataTables_paginate > a').wrapInner('<span />');
			$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
			$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
		} );
		
		 function show()
        {
         
        var a=document.getElementById("show");
        
        if(a.style.display==="none")
        {
           a.style.display="block";
        }
        
        else
        {
           a.style.display="none";
        }
       
        }
		
	</script>
	
</body>
