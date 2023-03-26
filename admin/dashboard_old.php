<?php  include('header.php'); ?>
<?php  include('session.php'); ?>
    <body>
		<?php include('navbar.php') ?>
        <div class="container-fluid">
            <div class="row-fluid">
			 <?php include('dashboard_slidebar.php'); ?>		
                <div class="span9" id="content">
                    <div class="row-fluid">
         	         <?php $query= mysql_query("select * from admin where admin_id = '$session_id'")or die(mysql_error());
			         $row = mysql_fetch_array($query);			
			         ?>
                    <div class="col-lg-12">
                      <div class="alert alert-success alert-dismissable">
                         <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                          <img id="avatar1" class="img-responsive" src="<?php echo $row['adminthumbnails']; ?>"><strong> Welcome!</strong> <?php echo $user_row['firstname']." ".$user_row['lastname'];  ?>
                      </div>
                    </div>
     
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left"><i class="icon-dashboard">&nbsp;</i>Dashboard Data Number</div>
								<div class="muted pull-right"><i class="icon-time"></i>&nbsp;<?php include('time.php'); ?></div>
                            </div>
                            <div class="block-content collapse in">
							        <div class="span12">
                
                           <?php 
								$stocks = mysql_query("select * from stdevice
								LEFT JOIN device_name ON stdevice.dev_id=device_name.dev_id")or die(mysql_error());
								$stocks = mysql_num_rows($stocks);
								?>
								
                                <div class="span3">
                                    <div class="chart" data-percent="<?php echo $stocks; ?>"><?php echo $stocks; ?></div>
                                    <div class="chart-bottom-heading"><strong>All Device Stock (s)</strong>

                                    </div>
                                </div>
								
								<?php 
								$new = mysql_query("select * from stdevice 
								LEFT JOIN device_name ON stdevice.dev_id=device_name.dev_id
								where dev_status = 'New' ORDER BY stdevice.id DESC")or die(mysql_error());
								$new = mysql_num_rows($new);
								?>
								
                                <div class="span3">
                                    <div class="chart" data-percent="<?php echo $new; ?>"><?php echo $new; ?></div>
                                    <div class="chart-bottom-heading"><strong> New Device (s) </strong>

                                    </div>
                                </div>
								
								<?php 
								$device_location = mysql_query("select * from location_details")or die(mysql_error());
								$device_location = mysql_num_rows($device_location);
								?>
								
                                <div class="span3">
                                    <div class="chart" data-percent="<?php echo $device_location; ?>"><?php echo $device_location; ?></div>
                                    <div class="chart-bottom-heading"><strong> Device (s) Assign </strong>

                                    </div>
                                </div>
								
								
			 
                            </div>
                        </div>
                        <!-- /block -->
						
                    </div>
                    </div>
                 
                </div>
            </div>
    
         <?php include('footer.php'); ?>
        </div>
	<?php include('script.php'); ?>
    </body>