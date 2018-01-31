<!DOCTYPE html>
<html>
    <head>
    <%@page import="com.smart.ws.model.*" %>
    <%@page import="java.text.*" %>
    <%@page import="java.util.*" %>
<%@page import="java.util.Map.Entry.*" %>
<%@page import="com.smart.ws.beans.*" %>
       <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Solar SCADA</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
 
    <!--base css styles-->
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
 
      <!--page specific css styles-->
        <link rel="stylesheet" href="assets/data-tables/bootstrap3/dataTables.bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="assets/bootstrap-fileupload/bootstrap-fileupload.css" />
 
    <!--flaty css styles-->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/style-responsive.css">
    <link rel="stylesheet" href="css/smart_styles.css">
 	<link rel="stylesheet" href="css/base.css">
    <link rel="shortcut icon" href="img/fav_icon.png">
    </head>
    <body onload="getDashboard()">
        <!-- BEGIN Theme Setting -->
        <div id="theme-setting">
            <%@include file="theme_setup.jsp" %>
        </div>
        <!-- END Theme Setting -->
 
        
        <div id="header">
            <%@include file="header.jsp" %>
        </div>
       
 
        <!-- BEGIN Container -->
        <div class="container" id="main-container">            

                  <%@include file="side_menu.jsp" %>  

          
            <!-- BEGIN Content -->
		<div id="main-content">
 			<!-- BEGIN Page Title -->
                
                <!-- END Page Title -->

                <!-- BEGIN Breadcrumb -->
<!--                 <div id="breadcrumbs"> -->
<!--                     <ul class="breadcrumb"> -->
<!--                         <li class="active"><i class="fa fa-home"></i> Home</li> -->
<!--                     </ul> -->
<!--                 </div> -->
                <!-- END Breadcrumb -->


                <!-- BEGIN Tiles -->
                <div class="row" id="dashboard">
                <div class="page-title">
                    <div>
                        <h3><i class="fa fa-file-o"></i> <label id="pageTitle">Dashboard</label> </h3>                       
                    </div>
                </div>
                <div class="col-md-12" style="height: 259px;">
                <div class="row">
                <!-- ------------------------------------------------------------------------------------ -->   
					<div class="col-md-12" style="padding-left:25px;margin: 0 0 -275px;">
						<div class="row ">
						 	<div class="col-md-6"> 
								<div class="col-md-5" style="padding-right:0px;"> 
									<div id="invs"></div>
								</div> 
								<div class="col-md-7"> 
			                       <div class="col-md-12">
				                     <div class="box">
				                          <div class="box-title">
				                              <h3><i class="fa fa-globe"></i>PR</h3>                                
				                               <div class="box-tool">                                
				                                   <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>                                    
				                               </div>
				                           </div>
				                           <div class="box-content">    
				                             <div id="pr_chart" style="height: 195px;"></div> 
				                           </div>
				                      </div>
			                       </div>     
                        		</div>
							</div>
							<div class="col-md-6" style="padding-right:19px;padding-left: 1px;">
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
						                            <select  id ="gStyle" onchange="getinvdasheng(this.value)">
														<option value="daily">Daily</option>
														<option value="monthly">Monthly</option>
														<option value="yearly">Yearly</option> 
														<option value="totaly">Totaly</option> 
													</select> 
												</div>
				                                <div id="todengcum" style="min-height:145px"></div> 
				                                <div id = "daterange">
				                                 	<div class="page-toolbar" align="center">
					                                	<table>
															<tr> 
																<td>
																	Date:
																	<input type="text" class="glyphicon glyphicon-calendar" size="13" name="startingDate" id="indate5" style="border:1px solid #e5e5e5;" onchange="getinvdasheng('daily')"/>
																</td>  
															</tr>
														</table>
													</div>
				                                </div>  
				                                <div id = "mnthrange">
				                                	<div class="page-toolbar" align="center">
														<select name="monthmonth" id="monthmonth" onchange="getinvdasheng('monthly')">
													 
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
				                                          <select name="monthyear" id="monthyear" onchange="getinvdasheng('monthly')"> 
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
												 <div id = "yearrange">
													 <div class="page-toolbar" align="center">
														<select name="yearyear" id="yearyear" onchange="getinvdasheng('yearly')">  
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
                    </div>
					<div class="col-md-12" style="height: 259px;">
	                      <div class="row">   
	                       	<div class="col-md-12" style="padding-left:53px;margin: 0 0 -275px;"> 
	                       	<div class="row">      
	                          <div class="col-md-8">
				                    <div class="row">
						                       <div class="col-md-12">
							                     <div class="box">
							                          <div class="box-title">
							                              <h3><i class="fa fa-globe"></i>Radiation Vs Power</h3>                                
							                               <div class="box-tool">                                
							                                   <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>                                    
							                               </div>
							                           </div>
							                           <div class="box-content">    
							                             <div id="invpow" style="min-height:180px"></div>
							                             <div class="page-toolbar" align="center">
															 <table>
																<tr> 
																	<td>
																		Date:
																		 <input type="text" class="glyphicon glyphicon-calendar" size="13" name="startingDate" id="indate3" style="border:1px solid #e5e5e5;" onchange="getinvdashpowGraph()"/>  
																	</td>  
																</tr>
															</table>  
															</div>
							                           </div>
							                      </div>
						                       </div>     
				                        	</div>   
	                    	  </div>   
                    	  <div class="col-md-4" style="padding-right:0px;"> 
							<div id="weats"></div>
						</div>  
                    	  </div>
                    	  </div> 
                    </div>
                   </div> 
				<div class="col-md-12" style="height: 259px;">
                      <div class="row">    
                        	<div class="col-md-6" style="padding-left:35px;"> 
		                       <div class="col-md-12">
			                     <div class="box">
			                          <div class="box-title">
			                              <h3><i class="fa fa-globe"></i>SCB</h3>                                
			                               <div class="box-tool">                                
			                                   <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>                                    
			                               </div>
			                           </div>
			                           <div class="box-content">    
			                             <div id="smb_chart" style="min-height:200px"></div>
			
			                           </div>
			                      </div>
		                       </div>     
                        	</div>
                        	<div class="col-md-6" style="padding-right:9px;"> 
		                       <div class="col-md-12">
			                     <div class="box">
			                          <div class="box-title">
			                              <h3><i class="fa fa-globe"></i>SCB</h3>                                
			                               <div class="box-tool">                                
			                                   <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>                                    
			                               </div>
			                           </div>
			                           <div class="box-content">    
			                             <div id="smbPowchart" style="min-height:200px"></div>
			
			                           </div>
			                      </div>
		                       </div>     
                        	</div>
                    	</div>   
                    </div>
<!-- ------------------------------------------------------------------------------------ --> 
                   
                   
                   
                    
                    
                </div>
        <div class="row" id="datapart">
        </div>
         <div id="resultpart"></div>
                <!-- END Tiles -->
<div class="row" id="loading" style="display:none;">
<center>
<img src="img/loader.gif" width="250" height="150"/>
</center>
 </div>

                
                <footer>
                     <%@include file="footer.jsp" %>
                </footer>

                <a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i class="fa fa-chevron-up"></i></a>
            </div>
            <!-- END Content -->
        </div>
        <!-- END Container -->
 
        <!--bottom of page scripts-->
    </body>
    <!--basic scripts-->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="assets/jquery/jquery-2.1.4.min.js"><\/script>')</script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="assets/jquery-cookie/jquery.cookie.js"></script>
 
 <!--page specific plugin scripts-->
<!--         <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3&sensor=true"></script> -->
<script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyCiCR3bktd6sWLNnzkUrVyX_2yCuhNnaVY"></script>
<script src="assets/gmaps/gmaps.js"></script>
<script src="assets/gmaps/markerclusterer.js"></script>
<script src="js/googlemaps.js"></script>
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
<script type="text/javascript" src="assets/data-tables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="assets/data-tables/bootstrap3/dataTables.bootstrap.js"></script>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" /> 

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

<script type="text/javascript" src="assets/highcharts/modules/exporting.js"></script>
<script type="text/javascript" src="assets/highcharts/modules/no-data-to-display.js"></script>

<script src="assets/fusioncharts/js/fusioncharts.js"></script>
<script src="assets/fusioncharts/js/themes/fusioncharts.theme.fint.js"></script>

<script src="assets/jquery-validation/jquery.validate.min.js"></script>
<script src="assets/jquery-validation/additional-methods.min.js"></script>
<script src="assets/chosen-bootstrap/chosen.jquery.min.js"></script>
<script src="assets/jquery/jquery.animateNumber.js"></script>
<script src="assets/bootstrap-switch/bootstrap-switch.js"></script>
<script src="assets/bootstrap-switch/bootstrap-switch.css"></script>


<script type="text/javascript">
$('#sidebar > ul.nav li a').click(function(e) {
    var $this = $(this);
    $this.parent().siblings().removeClass('active').end().addClass('active');
    
    //e.preventDefault();
});
Highcharts.getOptions().colors = Highcharts.map(Highcharts.getOptions().colors, function (color) {
    return {
        radialGradient: {
            cx: 0.5,
            cy: 0.3,
            r: 0.7
        },
        stops: [
            [0, color],
            [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
        ]
    };
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
	   $( "#monthmonth" ).val('<%=new SimpleDateFormat("MM").format(new Date()) %>');
	    
}); 


$(function() {
	   $( "#monthyearr" ).datepicker({
		   								changeYear: true,
									 });
	   $( "#monthyearr" ).datepicker('option','dateFormat','yy');
	   $( "#monthyear" ).val('<%=new SimpleDateFormat("yyyy").format(new Date()) %>');
}); 


$(function() {
	   $( "#yearr" ).datepicker({
		   								changeYear: true,
										});
	   $( "#yearr" ).datepicker('option','dateFormat','yy');
	   $( "#yearyear" ).val('<%=new SimpleDateFormat("yyyy").format(new Date()) %>');
});
$(document).ready(function(){
	$('#indate5').datepicker();
	//$('#daterange').hide();
	$('#gStyle').on('change', function(){
    	if( $(this).val() == "daily" ){
        	$('#daterange').show();
        	$('#range2').hide();
    	}
    	else
    	{
        	$('#daterange').hide();
    	}
	});
	
	$('#monthmonth,#monthyear');
	$('#mnthrange').hide();
	$('#gStyle').on('change', function(){
    	if( $(this).val() == "monthly" ){
        	$('#mnthrange').show();
        	$('#daterange').hide();
    	}
    	else
    	{
        	$('#mnthrange').hide();
    	}
	}); 
	
	$('#yearyear');
	$('#yearrange').hide();
	$('#gStyle').on('change', function(){
    	if( $(this).val() == "yearly" ){
        	$('#yearrange').show();
        	$('#daterange').hide();
    	}
    	else
    	{
        	$('#yearrange').hide();
    	}
	}); 
	 
});
 
</script> 
</html>