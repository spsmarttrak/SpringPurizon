<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*" %>
 
<div id="main-content">
               <!-- BEGIN Breadcrumb -->
                <div id="breadcrumbs">
                    <ul class="breadcrumb">
                        <li>
                            <i class="fa fa-home"></i>
                            <a href="#">Home</a>
                            <span class="divider"><i class="fa fa-angle-right"></i></span>
                        </li>
                        <li class="active">Weather</li>
                    </ul>
                </div>
                <!-- END Breadcrumb -->

                <!-- BEGIN Main Content -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="box">
                            <div class="box-title">
                                <h3><i class="fa fa-table"></i>Weather</h3> 
                            </div>
                            
                            <div class="box-content"> 
                                <div class="clearfix"></div>
									<div class="table-responsive" style="border:0">
									    <c:if test="${!empty weat}">
											 <table class="table table-advance" cellspacing="0" width="100%" id="table1">
												 <thead>
													  <tr> 
														   <th>Sensor</th>
														   <th>TimeStamp</th>   
														   <th>Irradiation Fix(w/m2)</th> 
														   <th>Irradiation Tilt(w/m2)</th>   
														   <th>Module Temp(°c)</th>
														   <th>Ambient Temp(°c)</th>
														   <th>Wind Speed(kmph)</th>
														   <th>Wind Direction(°)</th>
														   <th>Humidity(%)</th>
														  </tr>
												</thead>
												<tbody> 
												   <tr> 
													    <td><a href="javascript:viewWeatherData('${weat.SENID}')" title="viewinverters">${weat.SENID}</a></td><!-- javascript:wmsmax() -->
													    <td><c:out value="${weat.DATE}"/>,<c:out value="${weat.TIME}"/></td>     
													    <td><c:out value="${weat.IRR_FIX}"/></td> 
													    <td><c:out value="${weat.IRR_TILT}"/></td>
													    <td><c:out value='${weat.MOD_TEMP}'/></td>
													    <td><c:out value="${weat.AIR_TEMP}"/></td>
													    <td><c:out value="${weat.WIND_SPD}"/></td>   
													    <td><c:out value="${weat.WIND_DIR}"/></td>   
													    <td><c:out value="${weat.HUMIDITY}"/></td>  
												   </tr> 
												  </tbody>
											 </table> 
									</c:if>
									<c:if test="${empty weat}">
									<center><h3>No Data Available</h3></center>
									</c:if>
								</div>
                            </div>
                        </div>
                    </div>
                </div>