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
                        <li class="active">Tracker</li>
                    </ul>
                </div>
                <!-- END Breadcrumb -->

                <!-- BEGIN Main Content -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="box">
                            <div class="box-title">
                                <h3><i class="fa fa-table"></i>Tracker</h3> 
                                
                                    <%-- <div class="btn-group pull-right clearfix">
                                    <%if(!actionList.get(0).equals("0")) {%>
                                        <a class="btn btn-circle show-tooltip" title="Add new record" href="javascript:addUserRole()"><i class="fa fa-plus"></i></a>
                                       <%} %>
                                        </div> --%>
                                                                                                                                       
                            </div>
                            
                            <div class="box-content">
<!--                                 
<!--                                 <br/><br/> -->
                                <div class="clearfix"></div>
<div class="table-responsive" style="border:0">
    <c:if test="${!empty tracks}">
 <table class="table table-advance" cellspacing="0" width="100%" id="table1">
 <thead>
  <tr> 
   <th>Tracker Id</th>   
   <th>Sun Angle</th>  
   <th>Tracker Angle</th>
   <th>Set_Ang</th>
   <th>TimeStamp</th> 
  </tr>
</thead>
<tbody>
        <c:forEach items="${tracks}" var="track">     
   <tr>
	<td><c:out value="${track.traId}"/></td>  
    <td><c:out value="${track.spa_Ang}"/></td>
    <td><c:out value="${track.tra_Ang}"/></td>     
    <td><c:out value="${track.set_Ang}"/></td>  
     <td><c:out value="${track.date}"/>,<c:out value="${track.time}"/></td> 
     
   </tr>
         </c:forEach>     
  </tbody>
 </table> 
</c:if>
<c:if test="${empty tracks}">
<center><h3>No Data Available</h3></center>
</c:if>
</div>
                            </div>
                        </div>
                    </div>
                </div>