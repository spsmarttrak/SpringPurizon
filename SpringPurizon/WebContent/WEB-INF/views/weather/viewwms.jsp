<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/base.css">
<title>weatherstation</title>
</head>
<body onload="javascript:Reportsdata()">
	<!-- <div id="datacontainer"> -->
	<div id="main-content">
		<!-- BEGIN Breadcrumb -->
		<div id="breadcrumbs">
			<ul class="breadcrumb">
				<li><i class="fa fa-home"></i> <a href="#">Home</a> <span
					class="divider"><i class="fa fa-angle-right"></i></span></li>
				<li class="active">Weather Station</li>
			</ul>
		</div>
		<!-- END Breadcrumb -->
		<!-- Start Section One -->
		<section id="st-section-one" class="st-section st-clear">
			<div class="col-md-12 col-sm-12 st-section-wrap"
				style="height: 120px";>
				<div class="col-md-12 col-sm-12">
					<c:if test="${!empty indwms}">

						<div class="col-md-12 col-sm-12 st-no-pad st-mpad">

							<div class="col-md-3 col-sm-3 st-mpad">

								<div class="dashboard-stat blue-madison green-m"
									style="height: 120px;">
									<div class="widget lightgreen-1">
										<div class="widget-footer">
											<div class="row">
												<div class="col-sm-12">
													<div class="desc">Radiation</div>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="visual">
										<i class="fa fa-sun-o"></i>
									</div>
									<div class="details">
										<div class="desc">
											Fixed -
											<c:out value="${indwms.IRR_FIX}" />
											<span class="st-unit">W/m2</span>
										</div>
										<div class="desc">
											&nbsp; Tilt -
											<c:out value="${indwms.IRR_TILT}" />
											<span class="st-unit">W/m2</span>
										</div>
									</div>

								</div>
							</div>

							<div class="col-md-3 col-sm-3 st-mpad">
								<div class="dashboard-stat blue-madison marron-m"
									style="height: 120px;">
									<div class="widget purple-1">
										<div class="widget-footer">
											<div class="row">
												<div class="col-sm-12">
													<div class="desc">Temperature</div>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="visual">
										<i class="fa fa-thermometer-2"></i>
									</div>
									<div class="details">
										<div class="desc">
											Ambient -
											<c:out value="${indwms.AIR_TEMP}" />
											<span class="st-unit">°C</span>
										</div>
										<div class="desc">
											&nbsp;&nbsp;Module -
											<c:out value="${indwms.MOD_TEMP}" />
											<span class="st-unit">&deg;C</span>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-3 col-sm-3 st-mpad">
								<div class="dashboard-stat blue-madison orange-m"
									style="height: 120px;">
									<div class="widget yellow-1">
										<div class="widget-footer">
											<div class="row">
												<div class="col-sm-12">
													<div class="desc">Wind</div>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="visual">
										<i class="fa fa-flag"></i>
									</div>
									<div class="details">
										<div class="desc">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Speed -
											<c:out value="${indwms.WIND_SPD}" />
											<span class="st-unit">kmph</span>
										</div>
										<div class="desc">
											Direction-
											<c:out value="${indwms.WIND_DIR}" />
											<span class="st-unit">°</span>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-3 col-sm-3 st-mpad">
								<div class="dashboard-stat blue-madison  blue-m"
									style="height: 120px;">
									<div class="widget blue-1">
										<div class="widget-footer">
											<div class="row">
												<div class="col-sm-12">
													<div class="desc">Humidity</div>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="visual">
										<i class="fa fa-tint"></i>
									</div>
									<div class="details">
										<div class="desc">
											Humidity -
											<c:out value="${indwms.HUMIDITY}" />
											<span class="st-unit">%</span>
										</div>
									</div>

								</div>
							</div>
						</div>
					</c:if>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 st-lbox-wrap st-no-padl";>
				<h4 class="rcorners1" style="margin-left: 125px";>
					Last Updated Time :
					<c:out value="${indwms.DATE}" />
					&nbsp;
					<c:out value="${indwms.TIME}" />
				</h4>
				</centre>
			</div>

		</section>
		<section id="st-section-one" class="st-section st-clear" style="height: 127px";>
			<div class="col-md-12 col-sm-12 st-section-wrap" >
				<div class="col-md-12 col-sm-12">
					<c:if test="${!empty maxwms}">

						<div class="col-md-12 col-sm-12 st-no-pad st-mpad">

							<div class="col-md-3 col-sm-3 st-mpad">
								<div class="dashboard-stat blue-madison blue-m12"
									style="height: 120px;">
									<div class="widget blue-12">
										<div class="widget-footer">
											<div class="row">
												<div class="col-sm-12">
													<div class="desc">Max Radiation</div>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="visual">
										<i class="fa fa-sun-o"></i>
									</div>
									<div class="details">
										<div class="desc">
											Fixed -
											<c:out value="${maxwms.IRR_FIX}" />
											<span class="st-unit">W/m2</span>
										</div>
										<div class="desc">
											&nbsp; Tilt -
											<c:out value="${maxwms.IRR_TILT}" />
											<span class="st-unit">W/m2</span>
										</div>
									</div>

								</div>
							</div>

							<div class="col-md-3 col-sm-3 st-mpad">
								<div class="dashboard-stat blue-madison orange-m12"
									style="height: 120px;">
									<div class="widget yellow-12 ">
										<div class="widget-footer">
											<div class="row">
												<div class="col-sm-12">
													<div class="desc">Max Temperature</div>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="visual">
										<i class="fa fa-thermometer-2"></i>
									</div>
									<div class="details">
										<div class="desc">
											Ambient -
											<c:out value="${maxwms.AIR_TEMP}" />
											<span class="st-unit">°C</span>
										</div>
										<div class="desc">
											&nbsp;&nbsp;Module -
											<c:out value="${maxwms.MOD_TEMP}" />
											<span class="st-unit">&deg;C</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 st-mpad">
								<div class="dashboard-stat blue-madison marron-m12"
									style="height: 120px;">
									<div class="widget purple-12">
										<div class="widget-footer">
											<div class="row">
												<div class="col-sm-12">
													<div class="desc">Max Wind</div>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="visual">
										<i class="fa fa-flag"></i>
									</div>
									<div class="details">
										<div class="desc">
											&nbsp;&nbsp;&nbsp;&nbsp;Speed -
											<c:out value="${maxwms.WIND_SPD}" />
											<span class="st-unit">kmph</span>
										</div>
										<div class="desc">
											Direction -
											<c:out value="${maxwms.WIND_DIR}" />
											<span class="st-unit">°</span>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-3 col-sm-3 st-mpad">
								<div class="dashboard-stat blue-madison  green-m12"
									style="height: 120px;">
									<div class="widget lightgreen-12">
										<div class="widget-footer">
											<div class="row">
												<div class="col-sm-12">
													<div class="desc">Max Humidity</div>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="visual">
										<i class="fa fa-tint"></i>
									</div>
									<div class="details">
										<div class="desc">
											Humidity -
											<c:out value="${maxwms.HUMIDITY}" />
											<span class="st-unit">%</span>
										</div>
									</div>

								</div>
							</div>
				
					<%-- DATE:<input type="text" class="glyphicon glyphicon-calendar" size="13" name="startingDate" id="wmaxdate" style="border:1px solid #e5e5e5" style="margin-left:725px" onchange="viewWeatherData(wmaxdate)"/> </centre> --%>
				
						</div>
					</c:if>
				</div>
			</div>
		</section>



		<div class="col-md-12" style="height:120px;">
			<div class="row">
				<div class="col-md-6">  
						<div class="box">
							<div class="box-title">
								<h3>
									<i class="fa fa-globe"></i>Charts
								</h3>
								<div class="box-tool">
									<a data-action="collapse" href="#"><i
										class="fa fa-chevron-up"></i></a>
								</div>
							</div>
							<div class="box-content">

								<div class="tab-box"style="margin-left:17px; margin-right: -20px;"> 
									<button class="Button change" id="" onclick="javascript:getDailyWmsGraph()">Radiation</button>

									<button class="Button change" id="" onclick="javascript:getTempWmsGraph()">Temperature</button>

									<button class="Button change" id="" onclick="javascript:getwindWmsGraph()">Wind</button>

									<button class="Button change" id="" onclick="javascript:getHumidityWmsGraph()">Humidity</button>

								</div>
								<div id="wmschart" style="min-height: 170px"></div>
								<div class="page-toolbar" align="center">
									<table>
										<tr> 
											<td>
												Date: 
												<input type="text" class="glyphicon glyphicon-calendar" size="13" name="startingDate" id="indate11" style="border:1px solid #e5e5e5" onchange="getDailyWmsGraph()"/>
											</td>  
										</tr>
									</table>
								</div>
							</div>
						</div> 
				</div>

				<div class="col-md-6" style="padding-right: 0px;">  
						<div class="box">
							<div class="box-title">
								<h3>
									<i class="fa fa-globe"></i>Analysis : Irradiation
								</h3>
								<div class="box-tool">
									<a data-action="collapse" href="#"><i
										class="fa fa-chevron-up"></i></a>
								</div>
							</div>
							<div class="box-content"> 
								<div id="irrcontainer" style="min-height: 190px"></div> 
								<div class="page-toolbar" align="center">
									<table>
										<tr> 
											<td>
												Date: 
												<input type="text" class="glyphicon glyphicon-calendar" size="13" name="startingDate" id="indate10" style="border:1px solid #e5e5e5" onchange="getIrrWmsGraph()"/>
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
</body>
</html>

