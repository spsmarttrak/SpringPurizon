 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.springframework.web.context.WebApplicationContext" %> 
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="com.smart.ws.dao.impl.*" %>
<%@page import="com.smart.ws.dao.*" %>
<%@page import="com.smart.ws.model.*" %>
<%@page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <link rel="stylesheet" href="css/smart_styles.css">
<div id="main-content">
               <!-- BEGIN Breadcrumb -->
                <!-- <div id="breadcrumbs">
                    <ul class="breadcrumb">
                        <li>
                            <i class="fa fa-home"></i>
                            <a href="#">Home</a>
                            <span class="divider"><i class="fa fa-angle-right"></i></span>
                        </li>
                        <li class="active">Consumer Master</li>
                    </ul>
                </div> -->
                <!-- END Breadcrumb -->

                <!-- BEGIN Main Content -->
                <div class="row">
                    <div class="col-md-12">
                    <div class="widget orange-4">
						<div class="widget-footer">
								<div class="row">
									<div class="col-sm-12">
										<i class="fa rel-change" style="margin-left: 118px;"></i>Weather Station
									</div>
								</div>
								<div class="clearfix"></div>
						</div>
						<div style="background-image: url(img/sun.png) ; height: 215px; width: 361px;background-repeat: no-repeat;background-position: 118px -20px;"> 
						<div class="widget-content padding"> 
							<div class="widget-icon">
				
							</div>
							<div class="text-box"> 
												  <div class="visual" style="color: black;">  
													<p class="maindata">Ambient Temp : <c:out value="${weat.AIR_TEMP}"/></p>
													<p class="maindata">Module Temp : <c:out value="${weat.MOD_TEMP}"/></p>
													<p class="maindata">Wind Speed : <c:out value="${weat.WIND_SPD}"/></p>
													<p class="maindata">Wind Direction : <c:out value="${weat.WIND_DIR}"/></p>
													<p class="maindata">Humidity : <c:out value="${weat.HUMIDITY}"/></p>
													<p class="maindata">Irradiation Fix : <c:out value="${weat.IRR_FIX}"/></p>
													<p class="maindata">Irradiation Tilt : <c:out value="${weat.IRR_TILT}"/></p>
													<div class="clearfix"></div>
												</div>      
								  <div id="weats"></div>  
								<div class="clearfix"></div>
							</div>
						</div> 
						</div>
					</div>  
                </div>