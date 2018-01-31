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
                        <li class="active">Smb</li>
                    </ul>
                </div>
                <!-- END Breadcrumb -->

	<div class="col-md-12">
		<div class="row">
			<div class="col-md-6" style="padding-left: 35px;">
				<div class="col-md-12">
					<div class="box">
						<div class="box-title">
							<h3>
								<i class="fa fa-globe"></i>SCB
							</h3>
							<div class="box-tool">
								<a data-action="collapse" href="#"><i
									class="fa fa-chevron-up"></i></a>
							</div>
						</div>
						<div class="box-content">
							<div id="smbpie_chart" style="min-height: 150px"></div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6" style="padding-right: 9px;">
				<div class="col-md-12">
					<div class="box">
						<div class="box-title">
							<h3>
								<i class="fa fa-globe"></i>SCB
							</h3>
							<div class="box-tool">
								<a data-action="collapse" href="#"><i
									class="fa fa-chevron-up"></i></a>
							</div>
						</div>
						<div class="box-content">
							<div id="PowchartSmbChart" style="min-height: 150px"></div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>






	<!-- BEGIN Main Content -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="box">
                            <div class="box-title">
                                <h3><i class="fa fa-table"></i>Smb</h3>                                              
                            </div> 
                            <div class="box-content"> 
                                <div class="clearfix"></div>
								<div class="table-responsive" style="border:0">
								    <c:if test="${!empty smb}">
									 <table class="table table-advance" cellspacing="0" width="100%" id="table10" style="font-size: 9px;">
										 <thead>
											  <tr> 
											   	<th>SMB</th>
												<th>S1 (A)</th> 
												<th>S2 (A)</th> 
												<th>S3 (A)</th>   
												<th>S4 (A)</th>
												<th>S5 (A)</th>
												<th>S6 (A)</th>
												<th>S7 (A)</th>
												<th>S8 (A)</th>
												<th>S9 (A)</th>
												<th>S10 (A)</th>
												<th>S11 (A)</th> 
												<th>S12 (A)</th> 
												<th>S13 (A)</th>   
												<th>S14 (A)</th>
												<th>S15 (A)</th>
												<th>S16 (A)</th>
												<th>S17 (A)</th>
												<th>S18 (A)</th>
												<th>S19 (A)</th>
												<th>S20 (A)</th>
												<th>S21 (A)</th> 
												<th>S22 (A)</th> 
												<th>S23 (A)</th>   
												<th>S24 (A)</th>
												<th>Total Current (A)</th> 
												<th>Voltage (V)</th> 
												<th>Power (KW)</th>
											  </tr>
										 </thead>
										<tbody> 
										   <c:forEach items="${smb}" var="smb">    
										 		<tr>
										 		<td><a href="javascript:viewSmb('${smb.SMBId}')" title="viewSmb">${smb.SMBId}</a></td> 
												<%--  <td><c:out value="${smb.SMBId}"/></td> --%>
												 <td><c:out value="${smb.STR_CUR1}"/></td>
												 <td><c:out value="${smb.STR_CUR2}"/></td>   
												 <td><c:out value="${smb.STR_CUR3}"/></td> 
												 <td><c:out value="${smb.STR_CUR4}"/></td>
												 <td><c:out value='${smb.STR_CUR5}'/></td>
												 <td><c:out value="${smb.STR_CUR6}"/></td>
												 <td><c:out value="${smb.STR_CUR7}"/></td>   
												 <td><c:out value="${smb.STR_CUR8}"/></td>   
												 <td><c:out value="${smb.STR_CUR9}"/></td> 
												 <td><c:out value="${smb.STR_CUR10}"/></td> 
												 <td><c:out value="${smb.STR_CUR11}"/></td>
												 <td><c:out value="${smb.STR_CUR12}"/></td>   
										   	     <td><c:out value="${smb.STR_CUR13}"/></td> 
												 <td><c:out value="${smb.STR_CUR14}"/></td>
												 <td><c:out value='${smb.STR_CUR15}'/></td>
												 <td><c:out value="${smb.STR_CUR16}"/></td>
												 <td><c:out value="${smb.STR_CUR17}"/></td>   
												 <td><c:out value="${smb.STR_CUR18}"/></td>   
												 <td><c:out value="${smb.STR_CUR19}"/></td> 
												 <td><c:out value="${smb.STR_CUR20}"/></td> 
												 <td><c:out value="${smb.STR_CUR21}"/></td>
												 <td><c:out value="${smb.STR_CUR22}"/></td>    
												 <td><c:out value="${smb.STR_CUR23}"/></td> 
												 <td><c:out value="${smb.STR_CUR24}"/></td>
												 <td><c:out value="${smb.TOT_CUR}"/></td>
												 <td><c:out value="${smb.VOLTAGE}"/></td>
												 <td><c:out value="${smb.POWER}"/></td>
										   		</tr>
										     </c:forEach>     
										  </tbody>
									 </table> 
								</c:if>
								<c:if test="${empty smb}">
								<center><h3>No Data Available</h3></center>
								</c:if>
								</div>
                            </div>
                        </div>
                    </div>
                </div>