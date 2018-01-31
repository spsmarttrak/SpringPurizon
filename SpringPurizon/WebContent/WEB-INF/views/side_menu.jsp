<%@page import="java.util.*" %>
<%@page import="java.util.Map.Entry.*" %>
<%@page import="com.smart.ws.beans.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- BEGIN Sidebar -->
<div id="sidebar" class="navbar-collapse collapse">
                <!-- BEGIN Navlist -->
                <ul class="nav nav-list">
                    <!-- BEGIN Search Form -->
                    <li>
<!--                          
                    </li>
                    <!-- END Search Form --> 
                    <li class="active">
                        <a href="javascript: location.reload();">
                            <i class="fa fa-dashboard"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>                    
         			<li>
                        <a href="javascript:wms()">
                            <i class="fa fa-cloud"></i>
                            <span>Weather</span>
                        </a>
                    </li>   
                    <li>
                        <a href="javascript:invdash()">
                            <i class="fa fa-server"></i>
                            <span>Inverter</span>
                        </a>
                    </li> 
                    <li>
                        <a href="javascript:smbdash()">
                            <i class="fa fa-server"></i>
                            <span>SMB</span>
                        <b class="arrow fa fa-angle-right"></b>
                        </a>
                         <ul class="submenu">
                          <li><a href="javascript:viewSmbLayout()">SMB Layout</a></li>
                          </ul>
                    </li> 
                   <li>
                        <a href="javascript:trackerdash()">
                            <i class="fa fa-server"></i>
                            <span>Tracker</span>
                             <b class="arrow fa fa-angle-right"></b>
                        </a>
                        <ul class="submenu">
                          <li><a href="javascript:getTrackerTabularScreen()">Tracker Reports</a></li>
                          </ul>
                    </li> 
                </ul>
                <!-- END Navlist -->

                <!-- BEGIN Sidebar Collapse Button -->
                <div id="sidebar-collapse" class="visible-lg">
                    <i class="fa fa-angle-double-left"></i>
                </div>
<!--                 END Sidebar Collapse Button -->
<!--                 <div id="sidebar-collapse"> -->
<!--                 <img src="img/smarttrak.jpg" width="200" height="70"/> -->
<!--                 </div> -->
            </div>
<!-- END Sidebar -->