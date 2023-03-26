     <div class="span3" id="sidebar">
	             <img id="avatar" class="img-polaroid" src="<?php echo $row['thumbnails']; ?>">
                    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
                        <li class=""> <a href="dashboard_client.php"><i class="icon-chevron-right"></i><i class="icon-home"></i>&nbsp;Dashboard</a> </li>
						<li class="">
                            <a href="device_stocks.php"><i class="icon-chevron-right"></i><i class="icon-desktop"></i> Device / Stocks</a>
                        </li>
						<li class="active">
                            <a href="device_location.php"><i class="icon-chevron-right"></i><i class="icon-map-marker"></i> View Device Location</a>
                        </li>					
						<li class="">
                            <a href="newdevice.php"><i class="icon-chevron-right"></i><i class="icon-laptop"></i> New Device</a>
                        </li>	
						
                        <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-chevron-right"></i><i class="icon-search icon-large"></i>&nbsp;Advance Search&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<i class="caret"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                      <a href="#myModal" data-toggle="modal" tabindex="1"><i class="icon-chevron-right"></i><i class="icon-search"></i>&nbsp;Device in the location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#myModal1" data-toggle="modal" tabindex="-1" ><i class="icon-chevron-right"></i><i class="icon-search"></i>&nbsp;All Device&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                    </li>
                                </ul>
                            </li>
                    </ul>
					
				<?php include('search_form.php'); ?>
				<?php include('search_form1.php'); ?>										
    </div>