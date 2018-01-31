<!DOCTYPE html>
<html>
    <head>
       <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Dashboard</title>
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
 
    <link rel="shortcut icon" href="img/fav_icon.png">
    </head>
    <body onload="viewClient(3)"> <!-- 3 is action id for view client -->
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
                <div class="col-md-12">
                <div class="row">
                
                    <div class="col-md-4" id="pichart">
                    <div class="box" >
                            <div class="box-title">
                              <h3><i class="fa fa-picture-o"></i>Communication Status</h3>
                            </div> 
                             <div class="box-content" id="pi_chart">                      
                                     
                              </div>
                                                                                              
                        
                    </div>
                    </div>                    

                    <div class="col-md-8" id="alerts">
                        <div class="box ">
                            <div class="box-title" >
                                <h3><i class="fa fa-table"></i>Alerts</h3>
<!--                                 <div class="box-tool"> -->
<!--                                     <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a> -->
<!--                                     <a data-action="close" href="#"><i class="fa fa-times"></i></a> -->
<!--                                 </div> -->
                            </div>
                            <div class="box-content" id="alertsTable" style="height:190px;">
                                
                            </div>
                        </div>
                    </div>
                    </div>
                    </div>
                    <div class="col-md-12">
                    <div class="row">
                    <div class="col-md-12">
                     <div class="box">
                            <div class="box-title">
                                <h3><i class="fa fa-globe"></i>Live Status</h3>
<!--                                 <div class="box-tool"> -->
<!--                                     <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a> -->
<!--                                     <a data-action="close" href="#"><i class="fa fa-times"></i></a> -->
<!--                                 </div> -->
                            </div>
                            <div class="box-content">
                                <div class="gmap" id="gmap-markers"></div>
                            </div>
                        </div>
                        </div>
                    </div>
                    </div>
                    
                </div>
        <div class="row" id="datapart">
        </div>
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
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCiCR3bktd6sWLNnzkUrVyX_2yCuhNnaVY"></script>
        <script src="assets/gmaps/gmaps.js"></script>
        
 
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />

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

<script src="assets/jquery-validation/jquery.validate.min.js"></script>
<script src="assets/jquery-validation/additional-methods.min.js"></script>
<script src="assets/chosen-bootstrap/chosen.jquery.min.js"></script>


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
 
</script>
<!-- dropdown-toggle -->

</html>