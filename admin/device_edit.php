<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('Device_sidebar.php'); ?>
		
						<div class="span9" id="content">
		                    <div class="row-fluid">
									<a href="add_Device.php" class="btn btn-info"  id="add" data-placement="right" title="Klik Tambah Barang" ><i class="icon-plus-sign icon-large"></i>Tambah Barang</a>
					                <script type="text/javascript">
		                             $(document).ready(function(){
		                             $('#add').tooltip('show');
		                             $('#add').tooltip('hide');
		                              });
		                            </script> 
		                        <!-- block -->
		                        <div id="" class="block">
		                            <div class="navbar navbar-inner block-header">
		                                <div class="muted pull-left">Edit Device</div>
										<div class="muted pull-right"><a id="return" data-placement="left" title="Click to Return" href="device_stocks.php"><i class="icon-arrow-left icon-large"></i> Back</a></div>
																<script type="text/javascript">
																$(document).ready(function(){
																	$('#return').tooltip('show');
																	$('#return').tooltip('hide');
																});
																</script>     
		                            </div>
		                            <div class="block-content collapse in">									
									
									<?php
									$query = mysql_query("select * from stdevice 
									LEFT JOIN device_name ON stdevice.dev_id=device_name.dev_id
									where id = '$get_id'")or die(mysql_error());
									$row = mysql_fetch_array($query);
									?>
									
									    <form class="form-horizontal" method="post">
										
										<div class="control-group">
											<label class="control-label" for="inputEmail">Jenis Barang</label>
											<div class="controls">			
												<select id="qtype" name="dev_id" required>

													<option value="<?php echo $row['dev_id']; ?>" ><?php echo $row['dev_name']; ?></option>
													<?php
													$device_query = mysql_query("select * from device_name")or die(mysql_error());
													while($query_device_row = mysql_fetch_array($device_query)){
													$dev_name = $row['dev_name'];
													?>
													<option value="<?php echo $query_device_row['dev_id']; ?>"><?php echo $query_device_row['dev_name'];  ?></option>
													<?php } ?>

												</select>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Nama Barang</label>
											<div class="controls">
											<input type="text" class="span8" value="<?php echo $row['dev_nama']; ?>" name="dev_nama" id="inputPassword" placeholder="Nama Barang" required>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Id Pemda</label>
											<div class="controls">
											<input type="text" class="span8" value="<?php echo $row['dev_pemda']; ?>" name="dev_pemda" id="inputPassword" placeholder="Id Pemda" required>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Register</label>
											<div class="controls">
											<input type="text" class="span8" value="<?php echo $row['dev_register']; ?>" name="dev_register" id="inputPassword" placeholder="Register" required>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Merek</label>
											<div class="controls">
											<input type="text" class="span8" value="<?php echo $row['dev_brand']; ?>" name="dev_brand" id="inputPassword" placeholder="Merek" required>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Kode Barang</label>
											<div class="controls">
											<input type="text" class="span8" value="<?php echo $row['dev_serial']; ?>" name="dev_serial" id="inputPassword" placeholder="Kode Barang" required>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Tahun Perolehan</label>
											<div class="controls">
											<input type="text" class="span8" value="<?php echo $row['dev_model']; ?>" name="dev_model" id="inputPassword" placeholder="Tahun Perolehan" required>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Jumlah</label>
											<div class="controls">
											<input type="number" class="span8" value="<?php echo $row['dev_jumlah']; ?>" name="dev_jumlah" id="jumlah" placeholder="Jumlah" required>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Harga</label>
											<div class="controls">
											<input type="text" class="span8" value="<?php echo $row['dev_harga']; ?>" name="dev_harga" id="inputPassword" placeholder="Harga" required>
											</div>
										</div>
										
										<div id="hide">
										<div class="control-group">
											<label class="control-label" for="inputPassword"  placeholder="Device Status" >Device Status</label>
											<div class="controls">
											<select value="" name="dev_status" required>
													<option><?php echo $row['dev_status']; ?></option>													
												</select>								
											</div>
										</div>
									   </div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Keterangan</label>
											<div class="controls">
													<textarea name="dev_desc" id="ckeditor_full">
													<?php echo $row['dev_desc']; ?>
													</textarea>
											</div>
										</div>
										
										<div class="control-group">
										<div class="controls">
										
										<button id="update" data-placement="right" title="Click to update" name="update" type="submit" class="btn btn-info"><i class="icon-save icon-large"></i> Update</button>
										</div>
										</div>
										<script type="text/javascript">
										$(document).ready(function(){
										$('#update').tooltip('show');
										$('#update').tooltip('hide');
										});
										</script> 
										</form>
										
										<?php
										if (isset($_POST['update'])){
										$dev_id = $_POST['dev_id'];
										$dev_nama = $_POST['dev_nama'];
										$dev_desc = $_POST['dev_desc'];
										$dev_serial = $_POST['dev_serial'];
										$dev_brand = $_POST['dev_brand'];
										$dev_model = $_POST['dev_model'];
										$dev_status = $_POST['dev_status'];
										$dev_pemda = $_POST['dev_pemda'];
										$dev_register = $_POST['dev_register'];
										$dev_jumlah = $_POST['dev_jumlah'];
										$dev_harga = $_POST['dev_harga'];
										
										
									
										mysql_query("update stdevice set dev_id = '$dev_id' ,
																		dev_nama = '$dev_nama',
																		dev_desc = '$dev_desc',
																		dev_serial  = '$dev_serial',
																		dev_brand = '$dev_brand',
																		dev_model = '$dev_model',
																		dev_status = '$dev_status',
																		dev_pemda = '$dev_pemda',
																		dev_register = '$dev_register',
																		dev_jumlah = '$dev_jumlah',
																		dev_harga = '$dev_harga'
																		where id = '$get_id' ")or die(mysql_error());
																										
									    mysql_query("insert into activity_log (date,username,action) values(NOW(),'$admin_username','Edit device info $dev_name')")or die(mysql_error());
										?>
										<script>										
										window.location = "device_stocks.php";
										$.jGrowl("Device Successfully Update", { header: 'Device update' });
										</script>
										<?php
										}
										
										
										?>
									
								
		                            </div>
		                        </div>
		                        <!-- /block -->
		                    </div>
		                </div>
            </div>
<script>
	jQuery(document).ready(function(){
		jQuery("#opt11").hide();
		jQuery("#opt12").hide();
		jQuery("#opt13").hide();		

		jQuery("#qtype").change(function(){	
			var x = jQuery(this).val();			
			if(x == '1') {
				jQuery("#opt11").show();
				jQuery("#opt12").hide();
				jQuery("#opt13").hide();
			} else if(x == '2') {
				jQuery("#opt11").hide();
				jQuery("#opt12").show();
				jQuery("#opt13").hide();
			}
		});
		
	});
</script>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>

</html>