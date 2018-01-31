<!-- BEGIN Sidebar -->
<div id="sidebar" class="navbar-collapse collapse">
                <!-- BEGIN Navlist -->
                <ul class="nav nav-list">
                    <!-- BEGIN Search Form -->
                    <li>
<!--                         <form target="#" method="GET" class="search-form"> -->
<!--                             <span class="search-pan"> -->
<!--                                 <button type="submit"> -->
<!--                                     <i class="fa fa-search"></i> -->
<!--                                 </button> -->
<!--                                 <input type="text" name="search" placeholder="Search ..." autocomplete="off" /> -->
<!--                             </span> -->
<!--                         </form> -->
<img src="img/hmws.png" width="200" height="70"/>
                    </li>
                    <!-- END Search Form -->
                    <li class="active">
                        <a href="javascript:getDashboard()">
                            <i class="fa fa-dashboard"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                  

                   
                    <li>
                        <a href="#" >
                            <i class="fa fa-desktop"></i>
                            <span>Admin Module</span>
                            <b class="arrow fa fa-angle-right"></b>
                        </a>

                        <!-- BEGIN Submenu -->
                        <ul class="submenu">                            
                <li><a href="javascript:viewClient()">Client Master</a></li>
                <li><a href="javascript:viewTitles()">Hierarchy Title Master</a></li>
                <li><a href="javascript:viewHdata(1)">Hierarchy Data Master</a></li> 
<!--                 <li><a href="#">Device Type Master</a></li>  -->
<!--                 <li><a href="#">Device Make Master</a></li> -->
<!--                 <li><a href="#">Parameter Master</a>  </li> -->
<!--                 <li><a href="#">Params map to Device</a></li>               -->
                        </ul>
                        <!-- END Submenu -->
                    </li>
                   <li>
                        <a href="#" >
                            <i class="fa fa-user"></i>
                            <span>User Management</span>
                            <b class="arrow fa fa-angle-right"></b>
                        </a>

                        <!-- BEGIN Submenu -->
                        <ul class="submenu">                            
                <li><a href="javascript:viewUserRoles()">User Role Master</a></li>
                <li><a href="javascript:viewUsers()">User Master</a></li>                
                        </ul>
                        <!-- END Submenu -->
                    </li>
                 <li>
                        <a href="javascript:viewConsumer()" class="dropdown-toggle">
                            <i class="fa fa-user"></i>
                            <span>Consumer Mgmt</span>
                            
                        </a>
                    </li>   

                    <li>
                        <a href="#" >
                            <i class="fa fa-list"></i>
                            <span>Meter Management</span>
                            <b class="arrow fa fa-angle-right"></b>
                        </a>

                        <!-- BEGIN Submenu -->
                        <ul class="submenu">
                            <li><a href="javascript:viewModem()">Modem Master</a></li>               
                            <li><a href="javascript:viewMeter()">Meter Master</a></li>
                        </ul>
                        <!-- END Submenu -->
                    </li>
                  

                    
                    <li>
                        <a href="#" >
                            <i class="fa fa-edit"></i>
                            <span>Reports</span>
                            <b class="arrow fa fa-angle-right"></b>
                        </a>

                        <!-- BEGIN Submenu -->
                        <ul class="submenu">
                            <li><a href="javascript:getTabularScreen()">Textual Reports</a></li>
                            <li><a href="javascript:getGraphicalScreen()">Graphical Reports</a></li>
                            <li><a href="javascript:getConsumerReportsScreen()">Consumer Billing</a></li>                           
                           
                        </ul>
                        <!-- END Submenu -->
                    </li>
                    <li>
                        <a href="javascript:getSld()">
                            <i class="fa fa-picture-o"></i>
                            <span>SLD</span>
                        </a>
                    </li>
                   
                </ul>
                <!-- END Navlist -->

                <!-- BEGIN Sidebar Collapse Button -->
                <div id="sidebar-collapse" class="visible-lg">
                    <i class="fa fa-angle-double-left"></i>
                </div>
<!--                 END Sidebar Collapse Button -->
                <div id="sidebar-collapse">
                <img src="img/smarttrak.jpg" width="200" height="70"/>
                </div>
            </div>
<!-- END Sidebar -->