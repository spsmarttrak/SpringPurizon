<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*" %>
 <%@page import="java.text.*" %>
 <body onload="javascript:getCharts()">
<div id="main-content">
               <!-- BEGIN Breadcrumb -->
                <div id="breadcrumbs">
                    <ul class="breadcrumb">
                        <li>
                            <i class="fa fa-home"></i>
                            <a href="#">Home</a>
                            <span class="divider"><i class="fa fa-angle-right"></i></span>
                        </li>
                        <li class="active">Inverter</li>
                    </ul>
                </div>
                <!-- END Breadcrumb -->

                <!-- BEGIN Main Content -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="box">
                            <div class="box-title">
                                <h3><i class="fa fa-table"></i>Inverter</h3>  
                            </div> 
                            <div class="box-content"> 
                                <div class="clearfix"></div>
									<div class="table-responsive" style="border:0">
									    <c:if test="${!empty inv}">
											<table class="table table-advance" cellspacing="0" width="100%" id="table2">
												 <thead>
												  <tr> 
												   <th>Inverter</th>
												   <th>TimeStamp</th>   
												   <th>AC_POW</th>  
												   <th>DC_POW</th>
												   <th>Efficiency</th>
												   <th>PF</th>
												   <th>TODAY_AC_GEN</th>
												   <th>TOTAL_AC_GEN</th>
												  </tr>
												</thead>
												<tbody>
											      <c:forEach items="${inv}" var="inv">   
												   <tr>
												 	<td><a href="javascript:viewInverter('${inv.INVId}')" title="viewinverters">${inv.INVId}</a></td>
												    <td><c:out value="${inv.DATE}"/>,<c:out value="${inv.TIME}"/></td> 
												    <td><c:out value="${inv.AC_POW}"/></td>
												    <td><c:out value="${inv.DC_POW}"/></td>  
												    <td><c:out value="${inv.EFF}"/></td>
												    <td><c:out value="${inv.PF}"/></td> 
												    <td><c:out value="${inv.TODAY_AC_GEN}"/></td>    
												    <td><c:out value="${inv.TOTAL_AC_GEN}"/></td>   
												   </tr>
											       </c:forEach>   
											  </tbody>
											 </table> 
										</c:if>
									<c:if test="${empty inv}">
									<center><h3>No Data Available</h3></center>
									</c:if>
									</div>
                            	</div>
                        </div>
                    </div>
                    <div class="col-md-12">
                      <div class="row">  
                          <div class="col-md-6" style="padding-right:0px;padding-left: 20px;">
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
				                            	<select id ="prStyle" onchange="getinvdashprGraph(this.value)">
												  <option value="day">Day</option>
												  <option value="month" >Month</option>
												  <option value="year" >Year</option> 
												  <option value="total" >Total</option> 
												</select> 
											</div>
			                                <div id="invpr" style="min-height:175px"></div>  
				                                <div id = "mnthpr">
				                                	<div class="page-toolbar" align="center">
														<select name="monthmnth" id="monthmnthpr" onchange="getinvdashprGraph('month')">
													 
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
				                                          <select name="monthyr" id="monthyrpr" onchange="getinvdashprGraph('month')"> 
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
												  <div id = "yearpr">
													 <div class="page-toolbar" align="center">
														<select name="yearyear" id="yearyrpr" onchange="getinvdashprGraph('year')">  
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
															<input type="text" class="glyphicon glyphicon-calendar" size="13" name="startingDate" id="indate4" style="border:1px solid #e5e5e5;" onchange="getinvdashradpowGraph()"/>
														</td>  
													</tr>
												</table>
											</div>
			                           </div>
			                      </div>
		                       </div>     
                        	</div>
                    	</div>   
                    </div>
                    <div class="col-md-12">   
	                    <div class="col-md-12" style="padding-right:0px;">
	                    	<div class="row">
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
					                            <select id ="dStyle" onchange="getinvdashengGraph(this.value)">
													<option value="daily">Daily</option>
													<option value="monthly">Monthly</option>
													<option value="yearly">Yearly</option> 
													<option value="totaly">Totaly</option> 
												</select> 
											</div>
			                                <div id="todeng" style="min-height:175px"></div> 
			                                	<div id = "datep">
				                                 	<div class="page-toolbar" align="center">
					                                	<table>
															<tr> 
																<td>
																	Date:
																	<input type="text" class="glyphicon glyphicon-calendar" size="13" name="startingDate" id="indate7" style="border:1px solid #e5e5e5;" onchange="getinvdashengGraph('daily')"/>
																</td>  
															</tr>
														</table>
													</div>
				                                </div>  
				                                <div id = "mnthp">
				                                	<div class="page-toolbar" align="center">
														<select name="monthmnth" id="monthmnth" onchange="getinvdashengGraph('monthly')">
													 
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
				                                          <select name="monthyr" id="monthyr" onchange="getinvdashengGraph('monthly')"> 
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
												  <div id = "yearp">
													 <div class="page-toolbar" align="center">
														<select name="yearyear" id="yearyr" onchange="getinvdashengGraph('yearly')">  
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
                </div>
               </div>
               </body> 
               <!--basic scripts-->
    


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script> 

 
<!--flaty scripts-->
<script src="js/flaty.js"></script>
<script src="js/smartWs.js"></script>
<script src="js/dashboard.js"></script>
<script src="js/reports.js"></script> 

<script>
 
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
	   $( "#monthmnth" ).val('<%=new SimpleDateFormat("MM").format(new Date()) %>');
	    
}); 
$(function() {
	   $( "#monthyearr" ).datepicker({
		   								changeYear: true,
									 });
	   $( "#monthyearr" ).datepicker('option','dateFormat','yy');
	   $( "#monthyr" ).val('<%=new SimpleDateFormat("yyyy").format(new Date()) %>');
});  
$(function() {
	   $( "#yearr" ).datepicker({
		   								changeYear: true,
										});
	   $( "#yearr" ).datepicker('option','dateFormat','yy');
	   $( "#yearyr" ).val('<%=new SimpleDateFormat("yyyy").format(new Date()) %>');
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
	   $( "#monthmnthpr" ).val('<%=new SimpleDateFormat("MM").format(new Date()) %>');
	    
}); 
$(function() {
	   $( "#monthyearr" ).datepicker({
		   								changeYear: true,
									 });
	   $( "#monthyearr" ).datepicker('option','dateFormat','yy');
	   $( "#monthyrpr" ).val('<%=new SimpleDateFormat("yyyy").format(new Date()) %>');
});  
$(function() {
	   $( "#yearr" ).datepicker({
		   								changeYear: true,
										});
	   $( "#yearr" ).datepicker('option','dateFormat','yy');
	   $( "#yearyrpr" ).val('<%=new SimpleDateFormat("yyyy").format(new Date()) %>');
});
$(document).ready(function(){
	$('#indate7').datepicker();
	//$('#daterange').hide();
	$('#dStyle').on('change', function(){
    	if( $(this).val() == "daily" ){
        	$('#datep').show();
        	$('#mnthp').hide();
    	}
    	else
    	{
        	$('#datep').hide();
    	}
	}); 
	$('#monthmnth,#monthyr');
	$('#mnthp').hide();
	$('#dStyle').on('change', function(){
    	if( $(this).val() == "monthly" ){
        	$('#mnthp').show();
        	$('#datep').hide();
    	}
    	else
    	{
        	$('#mnthp').hide();
    	}
	}); 
	
   $('#yearyr');
	$('#yearp').hide();
	$('#dStyle').on('change', function(){
    	if( $(this).val() == "yearly" ){
        	$('#yearp').show();
        	$('#datep').hide();
    	}
    	else
    	{
        	$('#yearp').hide();
    	}
	});  
	
	 
	$('#monthmnthpr,#monthyrpr');
	$('#mnthpr').hide();
	$('#prStyle').on('change', function(){
    	if( $(this).val() == "month" ){
        	$('#mnthpr').show();
        	$('#yearpr').hide();
    	}
    	else
    	{
        	$('#mnthpr').hide();
    	}
	}); 
	
   $('#yearyrpr');
	$('#yearpr').hide();
	$('#prStyle').on('change', function(){
    	if( $(this).val() == "year" ){
        	$('#yearpr').show();
        	$('#mnthpr').hide();
    	}
    	else
    	{
        	$('#yearpr').hide();
    	}
	});  
	 
});



</script> 
 