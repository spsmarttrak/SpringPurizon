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
				<li class="active">Tracker</li>
			</ul>
		</div>
		<!-- END Breadcrumb -->  
		<!-- Start String Power Section --> 
		<section id="st-section-two" class="st-section st-clear">
			<div class="col-md-12 col-sm-12">  
					<c:forEach items="${trackerdata}" var="trackerdata"> 
						<div class="col-md-12 col-sm-12 st-no-pad st-mpad"> 
								<div class="col-md-3 col-sm-3 st-mpad" style="margin: 0 0 30px;">
									<div class="dashboard-stat blue-madison orange-m12">
										<div class="visual">
											<i class="fa fa-sun-o"></i>
										</div>
										<div class="details">
											<div class="desc">Sun Angle</div>
											<%-- ${trackerdata.spa_Ang} --%>
											<div class="number mode-ang-num" style="font-size: 30px;">
												<c:out value="${trackerdata.spa_Ang}" />

											</div>
										</div> 
									</div>
									<div class="st-status-gif">
										<img class="sun-status-img img-responsive"
											src="${trackerdata.sun_Angle}" />
									</div>
								</div>


								<div class="col-md-3 col-sm-3 st-mpad">
									<div class="dashboard-stat blue-madison red-m">
										<div class="visual">
											<i class="fa fa-sun-o"></i>
										</div>
										<div class="details">
											<div class="desc">Tracker Angle</div>
											<div class="number mode-ang-num" style="font-size: 30px;">
												<c:out value="${trackerdata.tra_Ang}" />
											</div>
										</div>
									</div>
									<div class="st-status-gif">
										<img src="${trackerdata.track_Angle}" class="tra-status-img" />
									</div>
								</div>
								<div class="col-md-3 col-sm-3 st-mpad">
									<div class="dashboard-stat blue-madison green-m">
										<div class="visual">
											<i class="fa fa-sun-o"></i>
										</div>
										<div class="details">
											<div class="desc">Tracker Mode</div>
											<div class="number mode-ang-num" style="font-size: 30px;">
												<c:out value="${trackerdata.modeStatus}" />
											</div>
										</div>
									</div>
									<div class="st-status-gif">
										<!-- <img src="" class="mode-status-img" /> -->
										<img src="${trackerdata.tracker_Mode}" class="mode-status-img" />
									</div>
								</div>

								<div class="col-md-3 col-sm-3 st-mpad">
									<div class="dashboard-stat blue-madison marron-m">
										<div class="visual">
											<i class="fa fa-sun-o"></i>
										</div>
										<div class="details">
											<div class="desc">Motor Status</div>
											<div class="number mode-ang-num" style="font-size: 30px;">
												<c:out value="${trackerdata.status}" />
											</div>
										</div>
									</div>
									<div class="st-status-gif">
										<img src="${trackerdata.motor_status}"
											class="status-angle-img" />
									</div>
								</div> 
								</div>
					
                        	</c:forEach>  
					<div class="col-md-12">
						<div class="row"> 
							<div class="col-md-6" style="padding-left:5px;"> 
							<c:forEach items="${trackerdata}" var="trackerdata">  
		                       <div class="col-md-12">
			                     <div class="box">
			                         <div class="box-title">
			                             <h3><i class="fa fa-globe"></i>Sun Angle Vs Tracker Angle</h3>                                
			                               <div class="box-tool">                                
			                                  <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>                                    
			                               </div>
			                          </div>
			                           <div class="box-content">    
			                             <div id="container" style="min-height:200px"></div>  
									<table>
									<tr> 
										<td>
											Date:
											<input type="hidden" id="traId" value="${trackerdata.traId}">
											<input type="text" class="glyphicon glyphicon-calendar" size="13" name="startingDate" id="indate1" style="border:1px solid #e5e5e5" onchange="getTrackerDashChart('${trackerdata.traId}')"/>
										</td> 
										<%-- <td>
											&nbsp;
											<button class="btn btn-info" size="30" onclick="getTrackerDashChart('${trackerdata.traId}')">Generate</button>
										</td> --%>
									</tr>
								</table>
			                           </div>
			                      </div>
		                       </div> 
		                       </c:forEach>    
                        	</div>
                        	<div class="col-md-6 col-sm-6 st-module">
								<c:forEach items="${trackerdata}" var="trackerdata">   
									<div class="trkcontroller">Timestamp</div>
										<div class="col-md-12" style="padding: 11px;"> 
											<div class="row"> 
												<div class="col-md-4">
													<div class="form-group">
														<label class="col-md-4 control-label">Hour</label>
									 					<div class="col-md-8">  
										 					<div class="input-group" style="padding-left: 11px;">  
															<input type="text" id = "hour" class="form-control hr-hour" placeholder="" value="${trackerdata.hours}">
											  				</div>  
									 					</div>  
													</div>
												</div>
												<div class="col-md-4">
											    	<div class="form-group">
														<label class="col-md-4 control-label">Minutes</label>
													 	<div class="col-md-8">  
															<div class="input-group" style="padding-left: 11px;">
																<input type="text" id = "min" class="form-control min-min" placeholder="" value="${trackerdata.minutes}">
															 </div>
													 	</div>  
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label class="col-md-4 control-label">Seconds</label>
														 <div class="col-md-8">  
															<div class="input-group" style="padding-left: 11px;">
																<input type="text" id = "sec" class="form-control sc-sec" placeholder="" value="${trackerdata.seconds}">
															</div>
														 </div>  
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="row"> 
												<div class="col-md-4">
													 <div class="form-group">
														<label class="col-md-3 control-label">Month</label>
														<div class="col-md-9">
															<div class="input-group" style="padding-left: 22px;">
																<input type="text" id = "mon"class="form-control mn-month" placeholder="" value="${trackerdata.month}">
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group ">
														<label class="col-md-3 control-label">Year</label>
														<div class="col-md-9">
															<div class="input-group" style="padding-left: 22px;">
																<input type="text" id = "year" class="form-control yr-year" placeholder="" value="${trackerdata.year}">
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label class="col-md-3 control-label">Day</label>
														<div class="col-md-9">
															<div class="input-group" style="padding-left: 22px;">
																<input type="text" id = "day" class="form-control dt-day" placeholder="" value="${trackerdata.day}">
															  </div>
														</div>
													</div>  
												</div>
											</div>
										</div> 
										
										<div class="col-md-12" style="padding-top: 10px;"> 
											<div class="row"> 
											<div class="trkcontroller">Location</div>
												<div class="col-md-4" style="padding: 11px;">
													<div class="form-group">
														<label class="col-md-3 control-label st-pad">Latitude</label>
														<div class="col-md-9">
															<div class="input-group" style="padding-left: 28px;">
															<input type="hidden" id="traId" value="${trackerdata.traId}">
																 <span class="input-group-btn">
																<input type="text" id = "lat" class="form-control lt-lat" placeholder="" value="${trackerdata.lat}">
																<button type="button" id="st-lat" class="btn btn-success st-btn" onclick="">Send</button>
															 </span> 
														   </div>
														</div>
													</div>
												</div>
											<div class="col-md-4" style="padding: 11px;">
												<div class="form-group">
													<label class="col-md-3 control-label st-pad">Longitude</label>
													<div class="col-md-9">
														<div class="input-group" style="padding-left: 28px;">
															<input type="text" id = "lon" class="form-control la-lon" placeholder="" value="${trackerdata.lan}">
													<button type="button" id="st-lon" class="btn btn-success st-btn" onclick="">Send</button>
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-4" style="padding: 11px;">
												<div class="form-group">
													<label class="col-md-3 control-label st-pad">TimeZone</label>
													<div class="col-md-9">
														<div class="input-group" style="padding-left: 28px;">
															<input type="text" id = "tmz" class="form-control tz-timezone" placeholder="" value="${trackerdata.tzone}"> 
														</div>
													</div>
												</div>
											</div>
											</div>
										</div>  
										
										<div class="col-md-12" style="padding-top: 10px;"> 
											<div class="row"> 
											<div class="trkcontroller">Tracker Limits</div>
												<div class="col-md-4" style="padding: 11px;"> 
													<div class="form-group">
														<label class="col-md-3 control-label st-pad">East Limit</label>
														<div class="col-md-9">
															<div class="input-group" style="padding-left: 28px;">
																<input type="text" id = "sel" class="form-control el-east" placeholder="" value="${trackerdata.slrev}"> 
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-4" style="padding: 11px;"> 
													<div class="form-group">
														<label class="col-md-3 control-label st-pad">West Limit</label>
														<div class="col-md-9">
															<div class="input-group" style="padding-left: 28px;">
																<input type="text" id = "swl" class="form-control wl-west" placeholder="" value="${trackerdata.slfrw}"> 
															</div>
														</div>
													</div>  
												</div>
											</div>
										</div>
									
						<!-- <div class="col-md-3 col-md-offset-1 pull-right st-globe">
							<img src="img/gifs/globe.gif" class="img-responsive" alt="Rotating Globe" />
						</div> -->
						</c:forEach>
					</div>
						</div>
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
	 <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" /> -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>  
	<script type="text/javascript" src="assets/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
	<!--flaty scripts-->
	<script src="js/flaty.js"></script>
	<script src="js/smartWs.js"></script>
	<script src="js/dashboard.js"></script>
	<script src="js/reports.js"></script>
 
	 
	 <!-- <script src="assets/bdatepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css"/></script>
	<script src="assets/bdatepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script> -->  
	<script src="assets/highcharts/highcharts.js"></script>
	<script src="assets/highcharts/highcharts-3d.js"></script>
	<script type="text/javascript" src="assets/highcharts/modules/exporting.js"></script>
	<script type="text/javascript" src="assets/highcharts/modules/no-data-to-display.js"></script>

	<script src="assets/jquery-validation/jquery.validate.min.js"></script>
	<script src="assets/jquery-validation/additional-methods.min.js"></script>
	<script src="assets/chosen-bootstrap/chosen.jquery.min.js"></script>
	<script src="assets/jquery/jquery.animateNumber.js"></script>
	<script src="assets/bootstrap-switch/bootstrap-switch.js"></script>
	<script src="assets/bootstrap-switch/bootstrap-switch.css"></script>
	<script>
	
	 
</script>