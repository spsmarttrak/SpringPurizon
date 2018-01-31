<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<!--flaty css styles-->
 <link rel="stylesheet" href="css/base.css">

<body onload="javascript:getReports()">
	<div id="main-content">
		<!-- BEGIN Breadcrumb -->
		<div id="breadcrumbs">
			<ul class="breadcrumb">
				<li><i class="fa fa-home"></i> <a href="#">Home</a> <span
					class="divider"><i class="fa fa-angle-right"></i></span></li>
				<li class="active">SMB</li>
			</ul>
		</div>
		<!-- END Breadcrumb -->  
		<!-- Start String Power Section --> 
		 <section id="st-section-two" class="st-section st-clear"> 
				<div class="col-md-12 col-sm-12">
					<c:forEach items="${smbindv}" var="smbindv">
					
					<!-- Start Left Box -->
						<div class="col-md-6 col-sm-6 st-box-left st-no-padl st-mpad" style="height:180%;">
							<div class="st-box-wrap st-clear">
								<!-- <div class="st-bhead-wrap">
									<h4 class="st-bhead"><i class="fa fa-globe"></i>- Status</h4>
								</div> -->
								<div class="st-box">
									<!-- Start Box Content -->
									<div class="st-bcontent">
										
										<div class="col-md-6 col-sm-6 st-lbox-wrap st-no-padl">
											<div class="st-lbox">
												<div class="st-lbox-content">
													<div class="st-dtitle">DC Voltage&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<div class="st-datum">
															<c:out value="${smbindv.VOLTAGE}"/>
															
														</div>&nbsp;<span class="">V</span>
													</div>
													<div id="voltchart-container"></div>
													<div class="st-datum-wrap st-clear">
														<!-- <div class="st-datum-icon">
															<i class="fa fa-plug"></i>
														</div> -->
														
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-sm-6 st-lbox-wrap st-no-padl">
											<div class="st-lbox" >
												<div class="st-lbox-content">
													<div class="st-dtitle">Sum Of Currents&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<div class="st-datum">
															<!-- <span class="s-sumofi">
																<i class="fa fa-spin fa-spinner"></i>
															</span> -->
															<c:out value="${smbindv.TOT_CUR}" />
														</div>&nbsp;<span class="">A</span>
													</div>
												<div id="tcurchart-container"></div>
													<div class="st-datum-wrap st-clear">
														<!-- <div class="st-datum-icon">
															<i class="fa fa-plug"></i>
														</div> -->
														
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-12 col-sm-12 st-lbox-wrap st-no-padl">
										<div class="st-lbox" >
												<div class="st-lbox-content">
													<div class="st-dtitle">Power&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<div class="st-datum">
															<!-- <span class="s-spow">
																<i class="fa fa-spin fa-spinner"></i>
															</span> -->
															<c:out value="${smbindv.POWER}" />
														</div>&nbsp;<span class="">KW</span>
													</div>
												<div id="powchart-container"></div>
													<div class="st-datum-wrap st-clear">
														<!-- <div class="st-datum-icon">
															<i class="fa fa-plug"></i>
														</div> -->
														
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- End Box Content -->
								</div>
							</div>
						</div>
						<!-- End Left Box -->
						
								<div class="col-md-6 col-sm-6">
						<div class="col-md-12 col-sm-12 st-no-pad st-mpad">
							<div class="box">
							<div class="box-title">
                                <h3><i class="fa fa-table"></i>Smb</h3>                                              
                            </div> 
							<div class="st-main-table">
								<div class="portlet">
									<div class="portlet-body">
										<div class="col-sm-6 col-md-6 st-no-pad">
										<div class="st-box-wrap st-clear">
										<div class="">
											<div class="table-container" style="max-height:399px">
												<table class="table table-striped table-hover table-responsive table-condensed" role="grid">
													<thead>
														<tr role="row" class="st-heading">
															<th>String</th>
															<th>Current [A]</th>
														</tr>
													</thead>
													<tbody>
														<tr role="row" class="odd" id="SCBB01">
															<td>
																 String-01 
															</td>
															<td> <c:out value="${smbindv.STR_CUR1}" /> 
															</td> 
														</tr>
														<tr role="row" id="SCBB02">
															<td>
																 String-02 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR2}" /> 
															</td> 
														</tr>
														<tr role="row" class="odd" id="SCBB03">
															<td>
																 String-03 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR3}" /> 
															</td> 
														</tr>
														<tr role="row" id="SCBB04">
															<td>
																 String-04 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR4}" /> 
															</td> 
														</tr>
														<tr role="row" class="odd" id="SCBB05">
															<td>
																 String-05 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR5}" /> 
															</td> 
														</tr>
														<tr role="row" id="SCBB06">
															<td>
																 String-06 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR6}" /> 
															</td> 
														</tr>
														<tr role="row" class="odd" id="SCBB07">
															<td>
															 String-07 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR7}" /> 
															</td> 
														</tr>
														<tr role="row" id="SCBB08">
															<td>
																 String-08 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR8}" /> 
														</tr>
														<tr role="row" class="odd" id="SCBB09">
															<td>
																 String-09 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR9}" /> 
															</td> 
														</tr>
														<tr role="row" id="SCBB10">
															<td>
																 String-10 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR10}" /> 
															</td> 
														</tr>
														<tr role="row" class="odd" id="SCBB11">
															<td>
																 String-11 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR11}" /> 
															</td> 
														</tr>
														<tr role="row" id="SCBB12">
															<td>
																  String-12 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR12}" /> 
															</td> 
														</tr>
														</tbody>
												</table>
											</div>
										</div>
										
										
									</div>
									</div>
									<div class="col-sm-6 col-md-6 st-no-pad">
										<div class="st-box-wrap st-clear">
										<div class="">
											<div class="table-container" style="max-height:399px">
												<table class="table table-striped table-hover table-responsive table-condensed" role="grid">
													<thead>
														<tr role="row" class="st-heading">
															<th>String</th>
															<th>Current [A]</th>
														</tr>
													</thead>
													<tbody>
														<tr role="row" class="odd" id="SCBB13">
															<td>
																 String-13 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR13}" /> 
															</td> 
														</tr>
														<tr role="row" class="odd" id="SCBB14">
															<td>
																 String-14 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR14}" /> 
															</td> 
														</tr>
														<tr role="row" id="SCBB15">
															<td>
																 String-15 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR15}" /> 
															</td> 
														</tr>
														<tr role="row" class="odd" id="SCBB16">
															<td>
																 String-16 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR16}" /> 
															</td> 
														</tr>
														<tr role="row" class="odd" id="SCBB17">
															<td>
																 String-17 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR17}" /> 
															</td> 
														</tr>
														<tr role="row" id="SCBB18">
															<td>
																 String-18 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR18}" /> 
															</td> 
														</tr>
														<tr role="row" class="odd" id="SCBB19">
															<td>
																 String-19 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR19}" /> 
															</td> 
														</tr>
														<tr role="row" id="SCBB20">
															<td>
																 String-20 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR20}" /> 
															</td> 
														</tr>
														<tr role="row" class="odd" id="SCBB21">
															<td>
																 String-21 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR21}" /> 
															</td> 
														</tr>
														<tr role="row" id="SCBB22">
															<td>
																 String-22 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR22}" /> 
															</td> 
														</tr>
														<tr role="row" class="odd" id="SCBB23">
															<td>
																 String-23 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR23}" /> 
															</td> 
														</tr>
														<tr role="row" id="SCBB24">
															<td>
																String-24 
															</td>
															<td>
																<c:out value="${smbindv.STR_CUR24}" /> 
															</td> 
														</tr>
														</tbody>
												</table>
											</div>
										</div>
										
										
									</div>
									</div>
										</div>
								</div>
							</div>
							</div>
						</div>
						
					</div>
					</c:forEach>  
			</div>
			
					
					<div class="col-md-12" style="padding-top: 20px;"> 
						<div class="row">
							<c:forEach items="${smbindv}" var="smbindv">
		                       <div class="col-md-12">
			                     <div class="box">
			                         <div class="box-title">
			                             <h3><i class="fa fa-globe"></i>Strings Vs Current</h3>                                
			                               <div class="box-tool">                                
			                                  <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>                                    
			                               </div>
			                          </div>
			                           <div class="box-content">    
			                             <div id="stringcurr" style="min-height:300px"></div>  
			                             	<div class="page-toolbar" align="center"> 
				                              <table>
												<tr> 
													<td>
														Date:
														<input type="hidden" id="SMBId" value="${smbindv.SMBId}">
														<input type="text" class="glyphicon glyphicon-calendar" size="13" name="startingDate" id="indate2" style="border:1px solid #e5e5e5" onchange="getScbstringChart('${smbindv.SMBId}')"/>
													</td>  
												</tr>
											</table> 
										</div>
										
			                          </div>
			                      </div>
		                       </div>  
		                       </c:forEach> 
		                    </div>   
                       </div>
			</section>   
	</div>
	<!-- End String Power Section -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
		
	<script>window.jQuery || document.write('<script src="assets/jquery/jquery-2.1.4.min.js"><\/script>')</script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/jquery-cookie/jquery.cookie.js"></script>

	<!--page specific plugin scripts-->
	  
	<script src="assets/bootstrap/js/bootstrap-typeahead.js"></script>



	<!--page specific plugin scripts-->
	<script src="assets/flot/jquery.flot.js"></script>
	<script src="assets/flot/jquery.flot.resize.js"></script>
	<script src="assets/flot/jquery.flot.pie.js"></script>
	<script src="assets/flot/jquery.flot.stack.js"></script>
	<script src="assets/flot/jquery.flot.crosshair.js"></script>
	<script src="assets/flot/jquery.flot.tooltip.min.js"></script>
	<script src="assets/sparkline/jquery.sparkline.min.js"></script>

	<!--page specific plugin scripts-->
	<script type="text/javascript"
		src="assets/data-tables/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="assets/data-tables/bootstrap3/dataTables.bootstrap.js"></script>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>  
	<script type="text/javascript" src="assets/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
	<!--flaty scripts-->
	<script src="js/flaty.js"></script>
	<script src="js/smartWs.js"></script>
	<script src="js/dashboard.js"></script>
	<script src="js/reports.js"></script>

	<script type="text/javascript" src="assets/data-tables/buttons.html5.min.js"></script>
	<script type="text/javascript" src="assets/data-tables/buttons.print.min.js"></script>
	<script type="text/javascript" src="assets/data-tables/dataTables.buttons.min.js"></script>
	<script type="text/javascript" src="assets/data-tables/jszip.min.js"></script>
	<script type="text/javascript" src="assets/data-tables/pdfmake.min.js"></script>
	<script type="text/javascript" src="assets/data-tables/Vfs_fonts.js"></script>
	
	<link rel="stylesheet" href="assets/data-tables/buttons.dataTables.min.css"/>
	<script src="assets/highcharts/highcharts.js"></script>
	<script src="assets/highcharts/highcharts-3d.js"></script>
	
	<script type="text/javascript" src="js/fusioncharts/js/fusioncharts.js"></script>
	<script type="text/javascript" src="js/fusioncharts/js/themes/fusioncharts.theme.fint.js"></script>
	<script type="text/javascript" src="js/highcharts/js/highcharts.js"></script>
	<script type="text/javascript" src="js/highcharts/js/highcharts-more.js"></script>
	<script type="text/javascript" src="js/highcharts/js/modules/exporting.js"></script>
	<script type="text/javascript" src="js/highcharts/js/modules/no-data-to-display.js"></script>

	<script src="assets/jquery-validation/jquery.validate.min.js"></script>
	<script src="assets/jquery-validation/additional-methods.min.js"></script>
	<script src="assets/chosen-bootstrap/chosen.jquery.min.js"></script>
	<script src="assets/jquery/jquery.animateNumber.js"></script>
	<script src="assets/bootstrap-switch/bootstrap-switch.js"></script>
	<script src="assets/bootstrap-switch/bootstrap-switch.css"></script>
	
	
	<script> 
	
	 if (jQuery().datepicker) { 
		var todaydate = new Date();
		$('.date-picker').datepicker({
		    format: "yyyy-mm-dd",
		    autoclose: true,
		    todayHighlight: true,
		});
		$(".date-picker").datepicker("setDate", todaydate);
	    $(".date-picker").datepicker('update');
	}  
</script>