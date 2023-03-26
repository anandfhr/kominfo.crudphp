<?php
										include("./lib/dbcon.php");
										dbcon();			
										$dev_name = $_POST['dev_name'];
										$dev_name = $_POST['dev_nama'];
										$dev_desc = $_POST['dev_desc'];
										$dev_serial = $_POST['dev_serial'];
										$dev_brand = $_POST['dev_brand'];
										$dev_brand = $_POST['dev_pemda'];
										$dev_brand = $_POST['dev_register'];
										$dev_model = $_POST['dev_model'];
										$dev_brand = $_POST['dev_jumlah'];
										$dev_brand = $_POST['dev_harga'];
										$dev_status = $_POST['dev_status'];
									
										mysql_query("insert into stdevice (dev_name,dev_nama,dev_desc,dev_serial,dev_brand,dev_pemda,dev_register,dev_model,dev_jumlah,dev_harga,dev_status) values('$dev_name','$dev_nama','$dev_desc','$dev_serial','$dev_brand','$dev_pemda','$dev_register','$dev_model','$dev_jumlah','$dev_harga','$dev_status')")or die(mysql_error());
																				
										?>
										<script>
										window.location = "device_stocks.php";
										</script>
										<?php									
										
										?>