 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- BEGIN Navbar -->
<div id="navbar" class="navbar">
    <button type="button" class="navbar-toggle navbar-btn collapsed" data-toggle="collapse" data-target="#sidebar">
        <span class="fa fa-bars"></span>
    </button>
    <a class="navbar-brand" href="#" style='background:url(img/water.png) no-repeat 0px -43px !important;background-size: 30px 78px !important;margin-left:5px;text-shadow: 2px 2px #06C;font-weight:bold;font-family: verdana;'>
        <small>
            <i class="icon-desktop"></i>
            &nbsp;&nbsp;&nbsp;SOLAR SCADA
        </small>
    </a>
<%
// String  userDetails=request.getAttribute("userDetails").toString();
// String  userImg=session.getAttribute("userImg")==null?"":session.getAttribute("userImg").toString();
String  userDetails="",userImg="";
if(userImg.length()>0) 
 userImg=userImg.substring(userImg.indexOf("img"));
else
	userImg="img/user.png";
System.out.println("----------------->"+userImg);
%>
 
    <!-- BEGIN Navbar Buttons -->
<ul class="nav flaty-nav pull-right">
                
                <!-- BEGIN Button User -->
                <li class="user-profile">
                    <a data-toggle="dropdown" href="#" class="user-menu dropdown-toggle">
                        <img class="nav-user-photo" src="<%=userImg %>" alt="Client's pic" />
                        <span class="hhh" id="user_info">
                           <%=userDetails.split(",")[0] %> 
                        </span>
                        <i class="fa fa-caret-down"></i>
                    </a>

                    <!-- BEGIN User Dropdown -->
                    <ul class="dropdown-menu dropdown-navbar" id="user_menu">
<!--                         <li class="nav-header"> -->
<!--                             <i class="fa fa-clock-o"></i> -->
<%--                             Logined From <%=userDetails.split(",")[1] %> --%>
<!--                         </li> -->

<!--                         <li> -->
<!--                             <a href="#"> -->
<!--                                 <i class="fa fa-cog"></i> -->
<!--                                 Account Settings -->
<!--                             </a> -->
<!--                         </li> -->

<!--                         <li> -->
<!--                             <a href="#"> -->
<!--                                 <i class="fa fa-user"></i> -->
<!--                                 Edit Profile -->
<!--                             </a> -->
<!--                         </li> -->

                        <li>
                            <a href="#">
                                <i class="fa fa-question"></i>
                                Help
                            </a>
                        </li>

                        <li class="divider visible-xs"></li>

                        <li class="visible-xs">
                            <a href="#">
                                <i class="fa fa-tasks"></i>
                                Tasks
                                <span class="badge badge-warning">4</span>
                            </a>
                        </li>
                        <li class="visible-xs">
                            <a href="#">
                                <i class="fa fa-bell"></i>
                                Notifications
                                <span class="badge badge-important">8</span>
                            </a>
                        </li>
                        <li class="visible-xs">
                            <a href="#">
                                <i class="fa fa-envelope"></i>
                                Messages
                                <span class="badge badge-success">5</span>
                            </a>
                        </li>

                        <li class="divider"></li>

                        <li>
                            <a href="login.ws">
                                <i class="fa fa-off"></i>
                                Logout
                            </a>
                        </li>
                    </ul>
                    <!-- BEGIN User Dropdown -->
                </li>
                <!-- END Button User -->
            </ul>
<!-- END Navbar Buttons -->
</div>
<!-- END Navbar -->