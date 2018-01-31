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

                <!-- BEGIN Main Content --> 
                <div class="row" style="text-align: center;">
                    <div class="col-md-12">
                    <div class="widget orange-4">
						<div class="widget-footer">
								<div class="row">
									<div class="col-sm-12">
										<i class="fa  rel-change"></i> Plant
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						<div class="widget-content padding">
							<div class="widget-icon">
				
							</div>
							<div class="text-box"> 
								<div class="visual">  
								<p class="maindata">Start Time : <c:out value="${plant.START}"/></p>  
								<div class="clearfix"></div>
							</div>
						</div> 
					</div> 
				</div>
                </div>
               </div>
               <div class="row" style="text-align: center;"> 
                    <div class="col-md-12">
                    <div class="widget green-1">
				<div class="widget-footer">
						<div class="row">
							<div class="col-sm-12">
								<i class="fa  rel-change"></i> Inverter
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="widget-content padding">
						<div class="widget-icon">
			
						</div>
						<div class="text-box"> 
							<p class="maindata">Today Energy : <c:out value="${inv.TODAY_AC_GEN}"/></p>
							<p class="maindata">Total Energy : <c:out value="${inv.TOTAL_AC_GEN}"/></p> 
							<p class="maindata"> &nbsp;DC Power : <c:out value="${inv.AC_POW}"/></p>  
							<p class="maindata">AC Power : <c:out value="${inv.DC_POW}"/></p> 
							<div class="clearfix"></div>
						</div>
					</div> 
				</div>
                </div>
               </div> 
             </div>  