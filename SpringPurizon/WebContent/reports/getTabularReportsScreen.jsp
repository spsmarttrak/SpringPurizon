   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*" %> 
<style>
    .button_style
    {
        background-color:#bec9d4;
        color:#000;
        border-left:1px solid #FFF;      
        padding:3px 15px;
        text-decoration:none;
        float:left;
        border-top:1px solid #FFF; 
        border-radius:5px;
    }

    .button_style_1
    {
        background-color:#E0E0E0;
        color:#000;
        border-left:1px solid #FFF;      
        padding:3px 15px;
        text-decoration:none;
        float:left;
        border-top:1px solid #FFF; 
    } 
.tab-box{
border-bottom: 1px solid #CCC;
    padding-bottom: 6px;
}

    .tab-box a { 
   padding: 6px 20px;
    
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    border-radius:2px 2px 0px 0px;
    letter-spacing: .8px;
    color: #000;
    margin-right:-2px;
    margin-left:0px;
    min-width: 100px;
      }
     
    .tab-box a:link { color:#000; background-color:#ccc; }
    
    .tab-box li { display:inline;list-style:none; }
    .tab-box a:visited { color:#000; background-color:#ccc; }
/*     .tab-box a:hover { color:#000; background-color:#31708f; } */
    
    .tab-box a.active { color:#ffffff; background-color:#31708f; } 
     
     
      .tabs
      {
      	height:15px;border-color: #bbb;
    	margin-bottom: 0;
    	margin-left: -15px;
		padding-left:0px;
		border-bottom: 1px solid #bbb;
		padding-left:-10px;
      } 
    .tab-box a.activeLink {
        padding: 6px 20px;
    background: mediumseagreen !important;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
     border-radius:2px 2px 0px 0px;
    letter-spacing: .8px;
    color: #FFF;
    margin-right:-3px;
    margin-left:0px;
    min-width: 100px;
    }
    .tabcontent { border: 0px solid #8FA1B5; border-top: 0;}
    .hide { display: none;}


</style> 
<body>


	 <div id="main-content">
         <!-- BEGIN Breadcrumb -->
            <div id="breadcrumbs">
                <ul class="breadcrumb"> 
                   <li class="active">Reports</li>
                </ul>
           </div>
        <!--  END Breadcrumb 
         BEGIN Main Content   -->   
		  <div class="col-md-12">
              <div class="box">
                  <div class="box-title">
                   		<h3><i class="fa fa-table"></i>Tracker Reports</h3>                                                             
                  </div> 
                  <div class="st-box-wrap st-clear">
                  <div class="box-content">
                  <div class="tab-box" >    
					    <a href="javascript:;" class="tabLink activeLink" id="cont-1" onclick="getLatestTrackerData()">Latest</a>
					    <a href="javascript:;" class="tabLink " id="cont-2">History</a> 
					    
					</div>
					
					
	               <div class="tabcontent paddingAll hide" id="cont-2-1">
	              	<div class="clearfix"></div>
						<table>
							<tr>            
								<td>
							     	From Date: <!-- class="glyphicon glyphicon-calendar" -->
							        <input type="text"  size="13" name="startingDate" id="indate1" style="border:1px solid #e5e5e5;"/>
							    </td>
							    <td style="padding-left:10px;">
							        To Date:
							        <input type="text"  size="13" name="endingDate" id="indate2" style="border:1px solid #e5e5e5;"/>
							    </td>
							    <td>
							     	&nbsp;
							        <button class="btn btn-info" size="30" onclick="getTrackerHistoryData()">Generate Report</button>
							    </td>
							</tr>
						</table>
					    
	              </div>
	              <div id="tablelDiv" > </div> 
	              </div>
	              </div>
               </div>
           </div>
     </div>
 </body>
 <script type="text/javascript">
    $(document).ready(function() {
        $(".tabLink").each(function(){
            $(this).click(function(){
                tabeId = $(this).attr('id');
                $(".tabLink").removeClass("activeLink");
                $(this).addClass("activeLink");
                $(".tabcontent").addClass("hide");
                $("#"+tabeId+"-1").removeClass("hide")
                
                if(tabeId=="cont-1")
                {         
                	 document.getElementById("tablelDiv").innerHTML="";
                	 getLatestTrackerData();
                }
                if(tabeId=="cont-2")
                {            
                	document.getElementById("tablelDiv").innerHTML="";
                	 
                }  
                });
        });
    });
 </script>    
<script>
if (jQuery().datepicker) { 
	$('#indate1').datepicker({orientation: "left",
		format: 'yyyy-mm-dd',
		autoclose: true,
		todayHighlight: true
	});     
}                    
if (jQuery().datepicker) {
    $('#indate2').datepicker({orientation: "left",
         format: 'yyyy-mm-dd',
         autoclose: true,
         todayHighlight: true
	});     
}  
</script> 
             