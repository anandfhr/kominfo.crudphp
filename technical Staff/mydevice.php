<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['stdev_id']; ?>
    <body id="home">
		<?php include('navbar_client.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('device_location_sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
					 <a href="device_location.php" class="btn btn-info"  id="return" data-placement="right" title="Click to return" ><i class="icon-arrow-left icon-large"></i> Back</a>
					  <script type="text/javascript">
		              $(document).ready(function(){
		              $('#return').tooltip('show');
		              $('#return').tooltip('hide');
		              });
		             </script>
					 
					    <!-----------------------------------sc logo for print------------------------------------>	
						
						<?php $location_query = mysql_query("select * from stlocation	                     
	                     where stdev_id = '$get_id'")or die(mysql_error());
	                     $location_row = mysql_fetch_array($location_query);
	                    ?>
						
            <!-------------------------------block ------------------------------>
            <div id="block_bg" class="block">
                  <div class="navbar navbar-inner block-header">							
							  <div class="muted pull-left"><i class="icon-building"></i>  <?php echo $location_row['stdev_location_name']; ?> </div>
							  
                                <div id="" class="muted pull-right">
								<?php 
								$my_device = mysql_query("select * from location_details    
	                            LEFT JOIN stdevice ON location_details.id = stdevice.id
								LEFT JOIN device_name ON stdevice.dev_id=device_name.dev_id
								where NOT EXISTS 
                                (select * from location_details where dev_status='Dump')
                                 and stdev_id = '$get_id' ")or die(mysql_error());
								$count_my_device = mysql_num_rows($my_device);?>
								Number of Device: <span class="badge badge-info"><?php echo $count_my_device; ?></span>
								</div>								
                    </div>
							
<!-----------------------------------for Print display visible------------------------------------>								
<h4 id="sc">Location:<?php echo $location_row['stdev_location_name']; ?> all device List
<div align="right" id="sc">Date:
<?php
 $date = new DateTime();
 echo $date->format('l, F jS, Y');
 ?></div>
</h4>

 <div class="container-fluid">
 <div class="row-fluid">						 
 <br/>
 <!-----------------------------------device categorized by their location details using nav pills------------------------------------>	
	<div class="pull-left">
			    <ul class="nav nav-pills">
				<?php	
	            $my_device = mysql_query("select * from location_details	                                                    
                LEFT JOIN stdevice ON location_details.id = stdevice.id 
				LEFT JOIN device_name ON stdevice.dev_id=device_name.dev_id
				where NOT EXISTS 
                (select * from location_details where dev_status='Dump')
                 and stdev_id = '$get_id' ")or die(mysql_error());
			    $count = mysql_num_rows($my_device);
			    ?>
				<li class="active">
				<a href= 'mydevice.php<?php echo '?stdev_id='.$get_id; ?>')">All&nbsp;<span class="label label-default"> <?php echo $count;?></span></a>
					
				</li>
				
			
				</ul>
	 </div>
   </div>
</div>

<div class="container-fluid">
  <div class="row-fluid"> 
     <div class="empty">
	     <div class="pull-right">
        <?php
         $my_device = mysql_query("select * from location_details	                                                    
         LEFT JOIN stdevice ON location_details.id = stdevice.id 
         LEFT JOIN device_name ON stdevice.dev_id=device_name.dev_id
         where NOT EXISTS 
         (select * from location_details where dev_status='Dump')
         and stdev_id = '$get_id'		
         order by date_deployment DESC")or die(mysql_error());
         while($row = mysql_fetch_array($my_device));
         $id = $row['id'];		                                               
         ?>
		   <a class="btn btn-info" id="print" data-placement="left" title="Click to Print" href="print_list_inventory.php<?php echo '?stdev_id='.$get_id; ?>" class="btn btn-info"><i class="icon-print icon-large"></i> Print List</a>		      
		   <script type="text/javascript">
		     $(document).ready(function(){
		     $('#print').tooltip('show');
		     $('#print').tooltip('hide');
		     });
		   </script>        	   
         </div>
      </div>
    </div> 
</div>

<div class="block-content collapse in">
<div class="span12">
	<form action="" method="post"><!-----------------------------------table form------------------------------------>	
  	<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
		<thead>		
		     <tr>			        
					<th class="empty"></th>
					<th>Tipe Barang</th>
					<th>Nama Barang</th>
					<th>Keterangan  </th>
					<th>Kode Barang</th>
			        <th>Merek  </th>
					<th>Id Pemda  </th>
			        <th>Register  </th>
					<th>Tahun Perolehan </th>
					<th>Date Assign   </th>	
					<th>Kondisi Barang </th> 				
                    <th>Location Name </th>
					<th class="empty">Manage Device</th>
		    </tr>
		</thead>
<tbody>
<!-----------------------------------table Content------------------------------------>									
 <?php
$my_device = mysql_query("select * from location_details	                                                    
LEFT JOIN stdevice ON location_details.id = stdevice.id 
LEFT JOIN device_name ON stdevice.dev_id=device_name.dev_id
where NOT EXISTS 
(select * from location_details where dev_status='Dump')
and stdev_id = '$get_id'		
order by date_deployment DESC")or die(mysql_error());
while($row = mysql_fetch_array($my_device)){
$id = $row['id'];		                                               
?>
<tr>
		<td><?php
			   $device_query2 = mysql_query("select * from stdevice ")or die(mysql_error());
		       $dev=mysql_fetch_assoc($device_query2);
		       if($row['dev_status']=='New')
		       {
			   echo '<i class="icon-check"></i><div id="hide"><strong>'.$row['dev_status'].'</strong></div>';
		       }
		       else if($row['dev_status']=='Used')
			   {
			   echo '<i class="icon-ok"></i><div id="hide"><strong>'.$row['dev_status'].'</strong></div>';
		       }
			   else if($row['dev_status']=='Repaired')
			   {
			   echo '<i class="icon-wrench"></i><div id="hide"><strong>'.$row['dev_status'].'</strong></div>';
		       }
		       else
			   {
			   echo '<i class=""></i><div id="hide"><strong>'.$row['dev_status'].'</strong></div>';
		       };
			  ?>
		</td>
			<td><?php echo $row['dev_name']; ?></td>
			<td><?php echo $row['dev_nama']; ?></td>
			<td><?php echo $row['dev_desc']; ?></td>
			<td><?php echo $row['dev_serial']; ?></td>
			<td><?php echo $row['dev_brand']; ?></td>
			<td><?php echo $row['dev_pemda']; ?></td>
			<td><?php echo $row['dev_register']; ?></td>
			<td><?php echo $row['dev_model']; ?></td>
			<td><?php echo $row['date_deployment']; ?></td>
			<td><?php
			   $my_device1 = mysql_query("select * from stdevice ")or die(mysql_error());
		       $dev=mysql_fetch_assoc($my_device1);
		       if($row['dev_status']=='New')
		       {
			   echo '<div class="alert alert-success"><i class="icon-check"></i><strong>'.$row['dev_status'].'</strong></div>';
		       }
		       else if($row['dev_status']=='Used')
			   {
			   echo '<div class=""><i class="icon-ok"></i><strong>'.$row['dev_status'].'</strong></div>';
		       }
			    else if($row['dev_status']=='Repaired')
			   {
			   echo '<div class=""><i class="icon-wrench"></i><strong>'.$row['dev_status'].'</strong></div>';
		       }
		       else
			   {
			   echo '<div class=""><i class=""></i><strong>'.$row['dev_status'].'</strong></div>';
		       };
			  ?></td>
			<td><?php echo $location_row['stdev_location_name']; ?></td>
			
			<?php include('toolttip_edit_delete.php'); ?>
			<td width="80" class="empty"><a rel="tooltip"  title="Update Status" id="e<?php echo $id; ?>" href="devl_update_status.php<?php echo '?id='.$id; ?>&<?php echo 'stdev_id='.$get_id; ?>" class="btn btn-success"><i class="icon-upload-alt"></i> Status</a></td>		
		</tr>
											
	<?php } ?>   
</tbody>
</table>
</form>	
 <!---------------------------------------------------- /block --------------------------------------------->
             </div>
          </div>
        </div>
     </div>
  </div>
</div>
<?php include('footer.php'); ?>
</div>
<?php include('script.php'); ?>
</body>