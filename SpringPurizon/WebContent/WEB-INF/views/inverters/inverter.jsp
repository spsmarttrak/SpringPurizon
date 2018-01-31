 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*" %>
<!--flaty css styles-->
 <link rel="stylesheet" href="css/base.css">

<body onload="javascript:getReports(INVId)">
	<div id="main-content">
		<!-- BEGIN Breadcrumb -->
		<div id="breadcrumbs">
			<ul class="breadcrumb">
				<li><i class="fa fa-home"></i> <a href="#">Home</a> <span
					class="divider"><i class="fa fa-angle-right"></i></span></li>
				<li class="active">Inverter</li>
			</ul>
		</div>
		<!-- END Breadcrumb --> 
		<!-- Start String Power Section -->
		<section id="st-section-two" class="st-section st-clear">  
				<div class="col-md-12 col-sm-12">
					<c:forEach items="${inverterdata}" var="inverterdata"> 
						<div class="col-md-12 col-sm-12 st-no-pad st-mpad">
							<!-- <div class="status-wrap"> --> 
								<div class="col-md-3 col-sm-3 st-mpad">
									<div class="dashboard-stat blue-madison  red-m" style="margin: 0 0 30px;"> 
										<div class="details"> 
										<div class="desc">DC Power</div>
											<div class="number mode-ang-num" style="font-size: 30px;">
												<c:out value="${inverterdata.DC_POW}" /> 
												<span class="st-unit">KW</span>
											</div>  
										</div>

									</div> 
								</div> 
								<div class="col-md-3 col-sm-3 st-mpad">
									<div class="dashboard-stat blue-madison marron-m"> 
										<div class="details">
											<div class="desc">AC Power</div>
											<div class="number mode-ang-num" style="font-size: 30px;">
												<c:out value="${inverterdata.AC_POW}" />
												<span class="st-unit">KW</span>
											</div>
										</div>
									</div> 
								</div>
								<div class="col-md-3 col-sm-3 st-mpad">
									<div class="dashboard-stat blue-madison green-m"> 
										<div class="details">
											<div class="desc">Today Energy</div>
											<div class="number mode-ang-num" style="font-size: 30px;">
												<c:out value="${inverterdata.TODAY_AC_GEN}" />
												<span class="st-unit">KWh</span>
											</div>
										</div>
									</div> 
								</div> 
								<div class="col-md-3 col-sm-3 st-mpad">
									<div class="dashboard-stat blue-madison orange-m12"> 
										<div class="details">
											<div class="desc">Total Yeild Energy</div>
											<div class="number mode-ang-num" style="font-size: 30px;">
												<c:out value="${inverterdata.TOTAL_AC_GEN}" />
												<span class="st-unit">MWh</span>
											</div>
										</div>
									</div> 
								</div>
								<!-- </div> -->
								</div>
					</c:forEach>
					<div class="col-md-12">
                    <div class="row">
                    <%-- <div class="col-md-6" style="padding-right:0px;">
<!--                     <div class="row"> -->
                       <div class="col-md-12">
                     <div class="box">
                            <div class="box-title">
                                <h3><i class="fa fa-globe"></i>Power Chart</h3>                                
                                <div class="box-tool">                                
                                    <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>                                    
                                </div>
                            </div>
                            <div class="box-content">    
                                <div id="invpower" style="min-height:200px"></div>
								<table>
									<tr> 
										<td>
											Date:
											<input type="text" class="glyphicon glyphicon-calendar" size="13" name="startingDate" id="indate1" style="border:1px solid #e5e5e5;"/>
										</td> 
										<td>
											&nbsp;
											<input type="hidden" id="traId" value="${trackerdata.traId}">
											<button class="btn btn-info" size="30" onclick="getinvGraph('${trackerdata.traId}')">Generate</button>
										</td>
									</tr>
								</table>
                            </div>
                        </div></div>     
                        </div>  --%>
                        <div class="col-md-12" style="padding-right:0px;">
<!--                     <div class="row"> -->
	                       <div class="col-md-12">
		                     <div class="box">
		                            <div class="box-title">
		                                <h3><i class="fa fa-globe"></i>Today Energy</h3>                                
		                                <div class="box-tool">                                
		                                    <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>                                    
		                                </div>
		                            </div>
		                            <div class="box-content">   
			                            <div class="pull-right">
			                            	<select id ="iStyle" onchange="getinvtodengGraph(this.value)">
											  <option value="daily">Daily</option>
											  <option value="monthly" >Monthly</option>
											  <option value="yearly" >Yearly</option> 
											  <option value="totaly" >Totaly</option> 
											</select> 
										</div>
		                                <div id="todeng" style="min-height:175px"></div> 
		                               		 <div id = "datei">
				                                 	<div class="page-toolbar" align="center">
					                                	<table>
															<tr> 
																<td>
																	Date:
																	<input type="text" class="glyphicon glyphicon-calendar" size="13" name="startingDate" id="indate" style="border:1px solid #e5e5e5;" onchange="getinvtodengGraph('daily')"/>
																</td>  
															</tr>
														</table>
													</div>
				                                </div>  
				                                <div id = "mnthi">
				                                	<div class="page-toolbar" align="center">
														<select name="monthmnth" id="monthmnthi" onchange="getinvtodengGraph('monthly')">
													 
													         <option value="01" >Jan</option>
													         <option value="02" >Feb</option>
				                                             <option value="03" >Mar</option>
				                                             <option value="04" >Apr</option>
				                                             <option value="05" >May</option>
				                                             <option value="06" >Jun</option>
				                                             <option value="07" >July</option>
				                                             <option value="08" >Aug</option>
				                                             <option value="09" >Sept</option>
				                                             <option value="10" >Oct</option>
				                                             <option value="11" >Nov</option>
				                                             <option value="12" >Dec</option>
				                                             
				                                          </select> 
				                                          <select name="monthyr" id="monthyri" onchange="getinvtodengGraph('monthly')"> 
				                                             <option value="2017" >2017</option>
				                                             <option value="2018" >2018</option>
				                                             <option value="2019" >2019</option>
				                                             <option value="2020" >2020</option>
				                                             <option value="2021" >2021</option>
				                                             <option value="2022" >2023</option>
				                                             <option value="2024" >2024</option>
				                                             <option value="2025" >2025</option>
				                                             <option value="2026" >2026</option>
				                                             <option value="2027" >2027</option>
				                                             <option value="2028" >2028</option>
				                                             <option value="2029" >2029</option>
				                                          </select>
	                                    			</div>
												 </div>
												  <div id = "yeari">
													 <div class="page-toolbar" align="center">
														<select name="yearyear" id="yearyri" onchange="getinvtodengGraph('yearly')">  
						                                             <option value="2017" >2017</option>
						                                             <option value="2018" >2018</option>
						                                             <option value="2019" >2019</option>
						                                             <option value="2020" >2020</option>
						                                             <option value="2021" >2021</option>
						                                             <option value="2022" >2023</option>
						                                             <option value="2024" >2024</option>
						                                             <option value="2025" >2025</option>
						                                             <option value="2026" >2026</option>
						                                             <option value="2027" >2027</option>
						                                             <option value="2028" >2028</option>
						                                             <option value="2029" >2029</option>
						                                  </select>
													</div>
												</div>  
		                            </div>
		                        </div>
		                    </div>     
                        </div>
                    </div>  
                    
                </div>
                <c:forEach items="${inverterdata}" var="inverterdata">
                <div class="col-md-12 col-sm-12 st-no-pad st-mpad">
							<!-- <div class="status-wrap"> -->  
					<div class="col-md-3">
						<div class="widget green-1">
							<div class="widget-footer">
								<div class="row">
									<div class="col-sm-12">
										<i class="fa  rel-change"></i>  STATUS
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content padding">
								<div class="widget-icon">
					
								</div>
								<div class="text-box"> 
									<p class="maindata">Efficiency : <span><c:out value="${inverterdata.EFF}" />&nbsp;%</span></p> 
									<p class="maindata">Frequency : <span><c:out value="${inverterdata.FREQ}" />&nbsp;Hz</span></p> 
									<p class="maindata">Power Factor : <span><c:out value="${inverterdata.PF}" /></span></p>
									<p class="maindata">InvTemp : <span><c:out value="${inverterdata.invTemp}" />&nbsp;°C</span></p>
									<p class="maindata">Cabinet Temp : <span><c:out value="${inverterdata.cabinateTemp}" />&nbsp;°C</span></p>
									<p class="maindata">Run Time : <span><c:out value="${inverterdata.TIME}" />&nbsp;Hrs</span></p>
									<div class="clearfix"></div>
								</div>
							</div> 
						</div>
					</div> 
					<div class="col-md-3">
						<div class="widget blue-1" style="height: 205px;">
							<div class="widget-footer">
								<div class="row">
									<div class="col-sm-12">
										<i class="fa  rel-change"></i> AC VOLTAGE
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content padding">
								<div class="widget-icon">
					
								</div>
								<div class="text-box"> 
									<p class="maindata">L1V : <span><c:out value="${inverterdata.l1_volt}" />
															&nbsp;V</span></p> 
									<p class="maindata">L2V : <span><c:out value="${inverterdata.l2_volt}" />
															&nbsp;V</span></p> 
									<p class="maindata">L3V : <span><c:out value="${inverterdata.l3_volt}" />
															&nbsp;V</span></p> 
									<div class="clearfix"></div>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-md-3">
						<div class="widget yellow-1" style="height: 205px;">
							<div class="widget-footer">
								<div class="row">
									<div class="col-sm-12">
										<i class="fa  rel-change"></i> AC CURRENT
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content padding">
								<div class="widget-icon">
					
								</div>
								<div class="text-box"> 
									<p class="maindata">L1A : <span><c:out value="${inverterdata.l1_cur}" />
															&nbsp;A</span></p> 
									<p class="maindata">L2A : <span><c:out value="${inverterdata.l2_cur}" />
															&nbsp;A</span></p> 
									<p class="maindata">L3A : <span><c:out value="${inverterdata.l3_cur}" />
															&nbsp;A</span></p> 
									<div class="clearfix"></div>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-md-3">
						<div class="widget orange-4" style="height: 205px;">
							<div class="widget-footer">
								<div class="row">
									<div class="col-sm-12">
										<i class="fa  rel-change"></i> DC
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="widget-content padding">
								<div class="widget-icon">
					
								</div>
								<div class="text-box"> 
									<p class="maindata">Voltage : <span><c:out value="${inverterdata.DC_VOL}" />
															&nbsp;V</span></p> 
									<p class="maindata">Current : <span><c:out value="${inverterdata.DC_CUR}" />
															&nbsp;A</span></p>  
									<div class="clearfix"></div>
								</div>
							</div> 
						</div>
					</div> 	 
				</div>
				</c:forEach>
				
				<div class="col-md-12">
                    <div class="row">
                    <div class="col-md-6" style="padding-right:0px;">
<!--                     <div class="row"> -->
                       <div class="col-md-12">
                     <div class="box">
                            <div class="box-title">
                                <h3><i class="fa fa-globe"></i>Radiation Vs Power</h3>                                
                                <div class="box-tool">                                
                                    <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>                                    
                                </div>
                            </div>
                            <div class="box-content">    
                                <div id="invradpow" style="min-height:200px"></div>
									<div class="page-toolbar" align="center">
								 				<table>
													<tr> 
														<td>
															Date:
															<input type="text" class="glyphicon glyphicon-calendar" size="13" name="startingDate" id="indate6" style="border:1px solid #e5e5e5;" onchange="getinvradpowGraph()"/>
														</td>  
													</tr>
												</table>
											</div>
                            		</div>
                        </div></div>     
                        </div> 
                        <div class="col-md-6" style="padding-right:0px;">
                    <div class="row">
                       <div class="col-md-12">
                     <div class="box">
                            <div class="box-title">
                                <h3><i class="fa fa-globe"></i>PR  Charts</h3>                                
                                <div class="box-tool">                                
                                    <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>                                    
                                </div>
                            </div>
                            <div class="box-content">   
	                            <div class="pull-right">
	                            	<select id ="iprStyle" onchange="getinvprGraph(this.value)">
									  <option value="day">Day</option>
									  <option value="month" >Month</option>
									  <option value="year" >Year</option> 
									  <option value="total" >Total</option> 
									</select> 
								</div>
                                <div id="invpr" style="min-height:175px"></div> 
                                <div id = "mnthipr">
				                                	<div class="page-toolbar" align="center">
														<select name="monthmnth" id="monthmnthipr" onchange="getinvprGraph('month')">
													 
													         <option value="01" >Jan</option>
													         <option value="02" >Feb</option>
				                                             <option value="03" >Mar</option>
				                                             <option value="04" >Apr</option>
				                                             <option value="05" >May</option>
				                                             <option value="06" >Jun</option>
				                                             <option value="07" >July</option>
				                                             <option value="08" >Aug</option>
				                                             <option value="09" >Sept</option>
				                                             <option value="10" >Oct</option>
				                                             <option value="11" >Nov</option>
				                                             <option value="12" >Dec</option>
				                                             
				                                          </select> 
				                                          <select name="monthyr" id="monthyripr" onchange="getinvprGraph('month')"> 
				                                             <option value="2017" >2017</option>
				                                             <option value="2018" >2018</option>
				                                             <option value="2019" >2019</option>
				                                             <option value="2020" >2020</option>
				                                             <option value="2021" >2021</option>
				                                             <option value="2022" >2023</option>
				                                             <option value="2024" >2024</option>
				                                             <option value="2025" >2025</option>
				                                             <option value="2026" >2026</option>
				                                             <option value="2027" >2027</option>
				                                             <option value="2028" >2028</option>
				                                             <option value="2029" >2029</option>
				                                          </select>
	                                    			</div>
												 </div>
												  <div id = "yearipr">
													 <div class="page-toolbar" align="center">
														<select name="yearyear" id="yearyripr" onchange="getinvprGraph('year')">  
						                                             <option value="2017" >2017</option>
						                                             <option value="2018" >2018</option>
						                                             <option value="2019" >2019</option>
						                                             <option value="2020" >2020</option>
						                                             <option value="2021" >2021</option>
						                                             <option value="2022" >2023</option>
						                                             <option value="2024" >2024</option>
						                                             <option value="2025" >2025</option>
						                                             <option value="2026" >2026</option>
						                                             <option value="2027" >2027</option>
						                                             <option value="2028" >2028</option>
						                                             <option value="2029" >2029</option>
						                                  </select>
													</div>
												</div> 
                            </div>
                        </div></div>     
                        </div>  
                    </div>  
                    
                </div>
				</div>
				
			</div>
			</section>   
	</div>
	</body>
	 
	<script type="text/javascript">
	$(function() {
		   $( "#datepickermonthwise" ).datepicker({
			   								changeMonth: true,
		        							changeYear: true,
		        							showAnim: "",
		        							justMonth: true,
			   								dateFormat: 'MM yyyy',
										  	buttonImageOnly: true,
										  	buttonText: "Select date"
										 });
		   $( "#datepickermonthwise" ).datepicker('option','dateFormat','mm');
		   $( "#monthmnthi" ).val('<%=new SimpleDateFormat("MM").format(new Date()) %>');
		    
	}); 
	$(function() {
		   $( "#monthyearr" ).datepicker({
			   								changeYear: true,
										 });
		   $( "#monthyearr" ).datepicker('option','dateFormat','yy');
		   $( "#monthyri" ).val('<%=new SimpleDateFormat("yyyy").format(new Date()) %>');
	});  
	$(function() {
		   $( "#yearr" ).datepicker({
			   								changeYear: true,
											});
		   $( "#yearr" ).datepicker('option','dateFormat','yy');
		   $( "#yearyri" ).val('<%=new SimpleDateFormat("yyyy").format(new Date()) %>');
	}); 
	$(function() {
		   $( "#datepickermonthwise" ).datepicker({
			   								changeMonth: true,
		        							changeYear: true,
		        							showAnim: "",
		        							justMonth: true,
			   								dateFormat: 'MM yyyy',
										  	buttonImageOnly: true,
										  	buttonText: "Select date"
										 });
		   $( "#datepickermonthwise" ).datepicker('option','dateFormat','mm');
		   $( "#monthmnthipr" ).val('<%=new SimpleDateFormat("MM").format(new Date()) %>');
		    
	}); 
	$(function() {
		   $( "#monthyearr" ).datepicker({
			   								changeYear: true,
										 });
		   $( "#monthyearr" ).datepicker('option','dateFormat','yy');
		   $( "#monthyripr" ).val('<%=new SimpleDateFormat("yyyy").format(new Date()) %>');
	});  
	$(function() {
		   $( "#yearr" ).datepicker({
			   								changeYear: true,
											});
		   $( "#yearr" ).datepicker('option','dateFormat','yy');
		   $( "#yearyripr" ).val('<%=new SimpleDateFormat("yyyy").format(new Date()) %>');
	});
	$(document).ready(function(){
		$('#indate9').datepicker();
		//$('#daterange').hide();
		$('#iStyle').on('change', function(){
	    	if( $(this).val() == "daily" ){
	        	$('#datei').show();
	        	$('#mnthi').hide();
	    	}
	    	else
	    	{
	        	$('#datei').hide();
	    	}
		}); 
		$('#monthmnthi,#monthyri');
		$('#mnthi').hide();
		$('#iStyle').on('change', function(){
	    	if( $(this).val() == "monthly" ){
	        	$('#mnthi').show();
	        	$('#datei').hide();
	    	}
	    	else
	    	{
	        	$('#mnthi').hide();
	    	}
		}); 
		
	   $('#yearyri');
		$('#yeari').hide();
		$('#iStyle').on('change', function(){
	    	if( $(this).val() == "yearly" ){
	        	$('#yeari').show();
	        	$('#datei').hide();
	    	}
	    	else
	    	{
	        	$('#yeari').hide();
	    	}
		}); 
		
		$('#monthmnthipr,#monthyripr');
		$('#mnthipr').hide();
		$('#iprStyle').on('change', function(){
	    	if( $(this).val() == "month" ){
	        	$('#mnthipr').show();
	        	$('#dateipr').hide();
	    	}
	    	else
	    	{
	        	$('#mnthipr').hide();
	    	}
		}); 
		
	   $('#yearyripr');
		$('#yearipr').hide();
		$('#iprStyle').on('change', function(){
	    	if( $(this).val() == "year" ){
	        	$('#yearipr').show();
	        	$('#dateipr').hide();
	    	}
	    	else
	    	{
	        	$('#yearipr').hide();
	    	}
		}); 
	}); 
</script>