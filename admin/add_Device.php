<?php include('header.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('Device_sidebar.php'); ?>
		
						<div class="span9" id="content">
		                    <div class="row-fluid">
							
		                        <!-- block -->
		                        <div class="block">
		                            <div class="navbar navbar-inner block-header">
		                                <div class="muted pull-left">Tambah Barang</div>
										<div class="muted pull-right"><a id="return" data-placement="left" title="Click to Return" href="device_stocks.php"><i class="icon-arrow-left icon-large"></i> Back</a></div>
										<script type="text/javascript">
										$(document).ready(function(){
										$('#return').tooltip('show');
										$('#return').tooltip('hide');
										});
										</script>                          
		                            </div>
									
		                <div class="block-content collapse in">	
                         <div class="alert alert-success"><i class="icon-info-sign"></i> Please Fill in required details</div>						
							<form class="form-horizontal" method="post">											
								
										<div class="control-group">
		                                 <label class="control-label" for="inputEmail">Jenis Barang</label>
			                                <div class="controls">
				                              <select name="dev_id" class="chzn-select"  required/>
				                                 <option></option>
			                                     <?php $device_name=mysql_query("select * from device_name")or die(mysql_error()); 
			                                     while ($row=mysql_fetch_array($device_name)){ 												
												 ?>
				                                 <option value="<?php echo $row['dev_id']; ?>&nbspName&nbsp<?php echo $row['dev_name']; ?>"><?php echo $row['dev_name']; ?></option>
				                                 <?php } ?>
				                               </select>
		                                     </div>
	                                    </div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Nama Barang</label>
											<div class="controls">
											<input type="text" class="span8" name="dev_nama" id="inputPassword" placeholder="Nama Barang" required>
											</div>
										</div>
											
										<div class="control-group">
											<label class="control-label" for="inputPassword">Id Pemda</label>
											<div class="controls">
											<input type="text" class="span8" name="dev_pemda" id="inputPassword" placeholder="Id Pemda" required>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Register</label>
											<div class="controls">
											<input type="text" class="span8" name="dev_register" id="inputPassword" placeholder="Register" required>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Merek</label>
											<div class="controls">
											<input type="text" class="span8" name="dev_brand" id="inputPassword" placeholder="Merek" required>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Kode Barang</label>
											<div class="controls">
											<input type="text" class="span8" name="dev_serial" id="inputPassword" placeholder="Kode Barang" required>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Tahun Perolehan</label>
											<div class="controls">
											<input type="text" class="span8" name="dev_model" id="inputPassword" placeholder="Tahun Perolehan" required>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Jumlah</label>
											<div class="controls">
											<input type="number" class="span8" name="dev_jumlah" id="jumlah" placeholder="Jumlah" required>
											</div>
										</div>

										<div class="control-group">
											<label class="control-label" for="inputPassword">Harga Perolehan</label>
											<div class="controls">
											<input type="text" class="span8" name="dev_harga" id="inputPassword" placeholder="Harga Perolehan" required>
											</div>
										</div>
										
										<div id="hide">
										<div class="control-group">
											<label class="control-label" for="inputPassword"  placeholder="Device Status" >Device Status</label>
											<div class="controls">
											<select name="dev_status"  required>										
													<option>New</option>																									
												</select>								
											</div>
										</div>
										</div>
												
										<div class="control-group">
											<label class="control-label" for="inputPassword">Keterangan</label>
											<div class="controls">
													<textarea name="dev_desc" id="ckeditor_full"></textarea>
											</div>
										</div>
											
										<div class="control-group">
										<div class="controls">
										<button name="save" id="save" name="singlebutton" data-placement="right" title="Click here to Save your new data." class="btn btn-primary"><i class="icon-save"></i> Save</button>				
										</div>
										</div>
										<script type="text/javascript">
										$(document).ready(function(){
										$('#save').tooltip('show');
										$('#save').tooltip('hide');
										});
										</script>
							</form>
<?php
if (isset($_POST['save'])){
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
										
mysql_query("insert into stdevice (dev_id,dev_nama,dev_desc,dev_serial,dev_brand,dev_model,dev_status,dev_pemda,dev_register,dev_jumlah,dev_harga) values('$dev_id','$dev_nama','$dev_desc','$dev_serial','$dev_brand','$dev_model','$dev_status','$dev_pemda','$dev_register','$dev_jumlah','$dev_harga')")or die(mysql_error());
mysql_query("insert into activity_log (date,username,action) values(NOW(),'$admin_username','Tambah Barang Detail id $dev_id')")or die(mysql_error());											
?>
<script>
window.location = "device_stocks.php";
$.jGrowl("Device Successfully added", { header: 'Device add' });
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
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>