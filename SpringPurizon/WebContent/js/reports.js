var id;
function getReports(INVId){   
	document.getElementById("invradpow").innerHTML=document.getElementById("loading").innerHTML;
	document.getElementById("todeng").innerHTML=document.getElementById("loading").innerHTML;
	document.getElementById("invpr").innerHTML=document.getElementById("loading").innerHTML;  
	id=INVId;   
	getinvradpowGraph(INVId); 
	getinvtodengGraph('daily');
	getinvprGraph('day');  
} 
var scb;
function getscbReports(smbid){ 
	document.getElementById("stringcurr").innerHTML=document.getElementById("loading").innerHTML;
	document.getElementById("voltchart-container").innerHTML=document.getElementById("loading").innerHTML; 

	
	scb=smbid; 
	getScbstringChart(smbid); 
	getScbParamGuases(smbid);

} 

function getScbCharts(){
	document.getElementById("smbpie_chart").innerHTML=document.getElementById("loading").innerHTML;
	document.getElementById("PowchartSmbChart").innerHTML=document.getElementById("loading").innerHTML;
	getScbpie();
	getCurrPowScbChart();
	}

var trd;
function gettrkReports(traId){  
	trd=traId;
	document.getElementById("container").innerHTML=document.getElementById("loading").innerHTML;
	getTrackerDashChart(traId); 
} 

function getCharts(){   
	document.getElementById("todeng").innerHTML=document.getElementById("loading").innerHTML; 
	document.getElementById("invradpow").innerHTML=document.getElementById("loading").innerHTML;
	document.getElementById("invpr").innerHTML=document.getElementById("loading").innerHTML; 
	getinvdashradpowGraph(); 
	getinvdashengGraph('daily');
	getinvdashprGraph('day'); 
	
}
function Reportsdata(){
	document.getElementById("wmschart").innerHTML=document.getElementById("loading").innerHTML;
	document.getElementById("irrcontainer").innerHTML=document.getElementById("loading").innerHTML;
	getDailyWmsGraph();
	getIrrWmsGraph();
	 
	
}
function smbdash(){  
	hideDashboardDiv();
	$.ajax( {
        url:'smb/smbdash.ws',
        success:function(data) {
           $('#datapart').html(data);
           getScbCharts();
           callDataTable('table10');
           //getCharts();
        }
     });
}

function callDataTable(tableId){
	 $('#'+tableId).DataTable( {
		 "order": [],
		 "dom": 'lBfrtip', 
		 "columnDefs": [{
		        
	    	   "defaultContent": "-",
	    	   "targets": "_all"
	    	 }],
		 "buttons": [{
			 extend:    'excel',
            text:      '<i class="fa fa-file-excel-o fa-lg"></i>',
            titleAttr: 'Excel'
		 },
		 {
			 extend:    'pdf',
            text:      '<i class="fa fa-file-pdf-o fa-lg"></i>',
            titleAttr: 'Pdf'
		 },
		 {
			 extend:    'print',
            text:      '<i class="fa fa-print fa-lg"></i>',
            titleAttr: 'Print'
		 }
	        ]
		 
	 } );
}






var dates=new Array(); 
var values=new Array();
var graphDayType; 
function getinvtodengGraph(daytype){  
	if(daytype=="daily"){
		var date=$("#indate").val(); 
	}
  if(daytype=="monthly"){
	  var date=$("#monthmnthi").val();
	  var date1=$("#monthyri").val();
	}
  if(daytype=="yearly"){
	  var date=$("#yearyri").val(); 
	}
  //console.log("ffffff"+date+date1);
	graphDayType=daytype;
	$.ajax( {		
        url:'reports/getInvTodEngChart.jsp?INVId='+id+'&daytype='+daytype+'&date='+date+'&date1='+date1,
        success:function(data) { 
        	dates=data.split("@")[0].split(","); 
        	values=data.split("@")[1].split(","); 
        	for(i=0;i<values.length;i++)
            {
        		values[i]=+values[i];
            }
        	generatetodengGraph(dates,values);  
        }
     });
}
var dates=new Array(); 
var values=new Array();
var graphDayType; 
function getinvdashengGraph(daytype){  
	if(daytype=="daily"){
		var date=$("#indate7").val(); 
	}
  if(daytype=="monthly"){
	  var date=$("#monthmnth").val();
	  var date1=$("#monthyr").val();
	}
  if(daytype=="yearly"){
	  var date=$("#yearyr").val(); 
	}
  //console.log("dtae"+date+date1);
	graphDayType=daytype;
	$.ajax( {		
        url:'reports/getInvDashTodChart.jsp?daytype='+daytype+'&date='+date+'&date1='+date1,
        success:function(data) {  
        	dates=data.split("@")[0].split(","); 
        	values=data.split("@")[1].split(","); 
        	for(i=0;i<values.length;i++)
            {
        		values[i]=+values[i];
            }
        	generatetodengGraph(dates,values);  
        }
     });
}  
var dates=new Array(); 
var values=new Array();
var graphDayType; 
function getinvprGraph(daytype,type){ 
	if(daytype=="month"){
		  var date=$("#monthmnthipr").val();
		  var date1=$("#monthyripr").val();
		}
	  if(daytype=="year"){
		  var date=$("#yearyripr").val(); 
		} 
	graphDayType=daytype;
	if(daytype=='day'){  
		type='pie'; 
		}else{  
		type='column';   
		} 
	$.ajax( {		
        url:'reports/getInvPrChart.jsp?INVId='+id+'&daytype='+daytype+'&type='+type+'&date='+date+'&date1='+date1,
        success:function(data) { 
        	dates=data.split("@")[0].split(","); 
        	values=data.split("@")[1].split(","); 
        	for(i=0;i<values.length;i++)
            {
        		values[i]=+values[i];
            }
        	generateprGraph(dates,values,type,data);  
        }
     });
}
var dates=new Array(); 
var values=new Array();
var graphDayType; 
function getinvdashprGraph(daytype,type){   
  if(daytype=="month"){
	  var date=$("#monthmnthpr").val();
	  var date1=$("#monthyrpr").val();
	}
  if(daytype=="year"){
	  var date=$("#yearyrpr").val(); 
	} 
	graphDayType=daytype;
	if(daytype=='day'){  
		type='pie'; 
		}else{  
		type='column';  
		}  
	$.ajax( {		
        url:'reports/getInvDashPrChart.jsp?daytype='+daytype+'&type='+type+'&date='+date+'&date1='+date1,
        success:function(data) {  
        	dates=data.split("@")[0].split(","); 
        	values=data.split("@")[1].split(",");  
        	for(i=0;i<values.length;i++)
            {
        		values[i]=+values[i];
            }
        	generateprGraph(dates,values,type,data);   
        }
     });
}  
var time=new Array();
var dcp=new Array();
var acp=new Array();
var rad=new Array();
function getinvradpowGraph(INVId){  
	var date=$("#indate6").val(); 
	$.ajax( {		
        url:'reports/getInvRadPowChart.jsp?INVId='+id+'&date='+date,
        success:function(data) {   
        	time=data.split("@")[0].split(",");
        	dcp=data.split("@")[1].split(",");
        	acp=data.split("@")[2].split(",");
        	rad=data.split("@")[3].split(",");
        	for(i=0;i<time.length;i++)
            {
        		time[i]=+time[i];
            }
        	for(i=0;i<dcp.length;i++)
            {
        		dcp[i]=+dcp[i];
            }
        	for(i=0;i<acp.length;i++)
            {
        		acp[i]=+acp[i];
            }
        	for(i=0;i<rad.length;i++)
            {
        		rad[i]=+rad[i];
            }
        	generateradpowGraph(time,dcp,acp,rad);
        	//generateHomeMeterGraph(xvalues,yvalues,reportType); 
        }
     });
}
var time=new Array();
var dcp=new Array();
var acp=new Array();
var rad=new Array();
function getinvdashradpowGraph(){ 
	var date=$("#indate4").val(); 
	$.ajax( {		
        url:'reports/getInvDashPowerChart.jsp?date='+date,
        success:function(data) {   
        	time=data.split("@")[0].split(",");
        	dcp=data.split("@")[1].split(",");
        	acp=data.split("@")[2].split(",");
        	rad=data.split("@")[3].split(",");
        	for(i=0;i<time.length;i++)
            {
        		time[i]=+time[i];
            }
        	for(i=0;i<dcp.length;i++)
            {
        		dcp[i]=+dcp[i];
            }
        	for(i=0;i<acp.length;i++)
            {
        		acp[i]=+acp[i];
            }
        	for(i=0;i<rad.length;i++)
            {
        		rad[i]=+rad[i];
            }
        	generateradpowGraph(time,dcp,acp,rad);
        	//generateHomeMeterGraph(xvalues,yvalues,reportType); 
        }
     });
} 
 

/*----------------Day datepicker------------------*/
function callForDay(divId){
	 //alert(divId);
	 
	var todaydate = new Date();
	$('#'+divId).datepicker({
	    format: "yyyy-mm-dd",
	    autoclose: true,
	    todayHighlight: true,
	});
	$('#'+divId).datepicker("setDate", todaydate);
    $('#'+divId).datepicker('update');

}
 
if (jQuery().datepicker) {
	var todaydate = new Date();
	$('#indate3').datepicker({
	    format: "yyyy-mm-dd",
	    autoclose: true,
	    todayHighlight: true,
	});
	$("#indate3").datepicker("setDate", todaydate);
    $("#indate3").datepicker('update');
}


if (jQuery().datepicker) {
	var todaydate = new Date();
	$('#indate4').datepicker({
	    format: "yyyy-mm-dd",
	    autoclose: true,
	    todayHighlight: true,
	});
	$("#indate4").datepicker("setDate", todaydate);
    $("#indate4").datepicker('update');
}
 if (jQuery().datepicker) {
	var todaydate = new Date();
	$('#indate5').datepicker({
	    format: "yyyy-mm-dd",
	    autoclose: true,
	    todayHighlight: true,
	});
	$("#indate5").datepicker("setDate", todaydate);
    $("#indate5").datepicker('update');
} 
 
 if (jQuery().datepicker) {
		var todaydate = new Date();
		$('#indate7').datepicker({
		    format: "yyyy-mm-dd",
		    autoclose: true,
		    todayHighlight: true,
		});
		$("#indate7").datepicker("setDate", todaydate);
	    $("#indate7").datepicker('update');
	} 
 if (jQuery().datepicker) {
		var todaydate = new Date();
		$('#indate8').datepicker({
		    format: "yyyy-mm-dd",
		    autoclose: true,
		    todayHighlight: true,
		});
		$("#indate8").datepicker("setDate", todaydate);
	    $("#indate8").datepicker('update');
	} 
 
/*----------------wms graphs------------------*/

var xvalue=new Array();
var yvalue=new Array();
var time=new Array();
function getDailyWmsGraph(){
//	alert("daily");
	var date=$("#indate11").val();
	var SiteId=5022; 
	$.ajax( {
		url:'reports/getDailyWmsData.jsp?date='+date+'&SiteId='+SiteId,
	      success:function(res) {
	    	  xvalue=res.split("@")[0].split(",");
	    	  yvalue=res.split("@")[1].split(",");
	    	  time=res.split("@")[2].split(",");
	    	  for(i=0;i<xvalue.length;i++)
		        {
		    		xvalue[i]=+xvalue[i];
		        }
		    	for(i=0;i<yvalue.length;i++)
		        {
		    		yvalue[i]=+yvalue[i];
		        }
		    	generateWmsGraph(xvalue,yvalue,time)
		          
		        }
		     });

	}


function generateWmsGraph(xvalue,yvalue,time){
//	console.log("sun"+xvalue);
	Highcharts.chart('wmschart', {
	    title: {
	        text:'',
	        style: {

                font: 'normal 12px Verdana, sans-serif',
                color : 'black',
             
            }
	    },
	    
	   /* style:{
	    	fontsize:'1em'
	    },*/
	    xAxis: {
	        categories: time
	    },
	    labels: {
	        items: [{
	            html: '',
	            style: {
	                left: '50%',
	                top: '50%',
	                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
	            }
	        }]
	    },
	    yAxis: {
	        title: {
	            enabled: true,
	            text:'Radiation[W/m2]',
	            style: {
	                fontWeight: 'normal',
	                
	            }
	        }
	        },
	    credits:false,
	    series: [{
	        type: 'spline',
	        name: 'Fixed',
	        color: '#e44a00',
	       data: xvalue
	    }, {
	        type: 'spline',
	        name: 'Tilt',
	        color: '#6baa01',
	        data: yvalue,
	        marker: {
	            lineWidth: 2,
	            lineColor: Highcharts.getOptions().colors[3],
	            fillColor: 'white'
	        }
	    }]
	});

}


function getIrrWmsGraph(){ 
	var SiteId=5022;
	var date=$("#indate10").val(); 
	 //console.log("kkkkkk"+date);
	$.ajax( {
		url:'reports/getIrrWmsData.jsp?date='+date+'&SiteId='+SiteId,
      success:function(res) {
    	  time=res.split("@")[2].split(",");
    	  xvalue=res.split("@")[0].split(",");
    	  yvalue=res.split("@")[1].split(",");
    	for(i=0;i<xvalue.length;i++)
        {
    		xvalue[i]=+xvalue[i];
        }
    	for(i=0;i<yvalue.length;i++)
        {
    		yvalue[i]=+yvalue[i];
        }
        	generateIrrWmsGraph(xvalue,yvalue,time);
          
        }
     });
}


function generateIrrWmsGraph(xvalue,yvalue,time)
{
	var xaxis=null;
	var fix=null; 
	var tilt=null;
//	alert("length"+xp.length);
	if(time.length!=1){
		xaxis=time;
	}else{
		xaxis=null;
	} 
	if(xvalue.length!=1){
		fix=xvalue;
	}else{
		fix=null;
	}
	if(yvalue.length!=1){
		tilt=yvalue;
	}else{
		tilt=null;
	}
Highcharts.chart('irrcontainer', {
    title: {
        text:'',
    },
    xAxis: {
        categories: xaxis
    },
    labels: {
        items: [{
            html: '',
            style: {
                left: '50%',
                top: '50%',
                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
            }
        }]
    },

	yAxis: {
    title: {
        enabled: true,
        text: 'Irradiation[kwh/m2]',
        style: {
            fontWeight: 'normal',
            
        }
    }
    },
    exporting: { enabled: false },
    credits:false,
    series: [{
        type: 'spline',
        name: 'Fixed',
        color: '#e44a00',
       data: fix
    }, {
        type: 'spline',
        name: 'Tilt',
        color: '#6baa01',
        data: tilt,
        marker: {
            lineWidth: 2,
            lineColor: Highcharts.getOptions().colors[3],
            fillColor: 'white'
        }
    }]
});

}

function generateWmstempGraph(xvalue,yvalue,time){
	Highcharts.chart('wmschart', {
	    title: {
	        text:'',
	    },
	    xAxis: {
	        categories: time
	    },
	    yAxis: {
	        title: {
	            enabled: true,
	            text:'Temperature[°C]',
	            style: {
	                fontWeight: 'normal',
	                
	            }
	        }
	        },
	    labels: {
	        items: [{
	            html: '',
	            style: {
	                left: '50%',
	                top: '50%',
	                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
	            }
	        }]
	    },
	    credits:false,
	    series: [{
	        type: 'spline',
	        name: 'Ambient',
	        color: '#e44a00',
	       data: xvalue
	    }, {
	        type: 'spline',
	        name: 'Module',
	        color: '#6baa01',
	        data: yvalue,
	        marker: {
	            lineWidth: 2,
	            lineColor: Highcharts.getOptions().colors[3],
	            fillColor: 'white'
	        }
	    }]
	});

}

function generatewindWmsGraph(xvalue,time){
//alert("in cahrt function");
	Highcharts.chart('wmschart', { 
	    title: {
	        text:'',
	    },
	    xAxis: {
	        categories: time
	    },
	    yAxis: {
	        title: {
	            enabled: true,
	            text:'WindSpeed[kmph]',
	            style: {
	                fontWeight: 'normal',
	                
	            }
	        }
	        },
	    labels: {
	        items: [{
	            html: '',
	            style: {
	                left: '50%',
	                top: '50%',
	                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
	            }
	        }]
	    },
	    credits:false,
	    series: [ {
	        type: 'spline',
	        name: 'Wind Speed[kmph]',
	        color: '#6baa01',
	        data: xvalue,
	        marker: {
	            lineWidth: 2,
	            lineColor: Highcharts.getOptions().colors[3],
	            fillColor: 'white'
	        }
	    }]
	});

}


function generateHumidityWmsGraph(xvalue,time)
{
//("hum"+xvalue);
Highcharts.chart('wmschart', {
    title: {
        text:'',
    },
    xAxis: {
        categories: time
    },
    yAxis: {
        title: {
            enabled: true,
            text:'Humidity[%]',
            style: {
                fontWeight: 'normal',
                
            }
        }
        },
    labels: {
        items: [{
            html: '',
            style: {
                left: '50%',
                top: '50%',
                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
            }
        }]
    },
    credits:false,
    series: [ {
        type: 'spline',
        name: 'Humidity[%]',
        color: '#e44a00',
        data: xvalue,
        marker: {
            lineWidth: 2,
            lineColor: Highcharts.getOptions().colors[3],
            fillColor: 'white'
        }
    }]
});

}


/*------------------WeatherStation Graphs----------------------*/


var xvalue=new Array();
var yvalue=new Array();
var time=new Array();
function getTempWmsGraph(){
	 	var SiteId=5022;
	 	var date=$("#indate11").val();
		$.ajax( {
			url:'reports/getDailyWmsData.jsp?date='+date+'&SiteId='+SiteId,
	      success:function(res) {
	    	  time=res.split("@")[2].split(",");
	    	  xvalue=res.split("@")[3].split(",");
	    	  yvalue=res.split("@")[4].split(",");
	    	for(i=0;i<xvalue.length;i++)
	        {
	    		xvalue[i]=+xvalue[i];
	        }
	    	for(i=0;i<yvalue.length;i++)
	        {
	    		yvalue[i]=+yvalue[i];
	        }
	    	generateWmstempGraph(xvalue,yvalue,time);
	          
	        }
	     });

}


function getwindWmsGraph(){
	 	var SiteId=5022;
	 	var date=$("#indate11").val();
		$.ajax( {
			url:'reports/getDailyWmsData.jsp?date='+date+'&SiteId='+SiteId,
	      success:function(res) {
	    	  time=res.split("@")[2].split(",");
	    	  xvalue=res.split("@")[5].split(",");
	//    	console.log("date"+xvalue);
	    	for(i=0;i<xvalue.length;i++)
	        {
	    		xvalue[i]=+xvalue[i];
	        }
	    	for(i=0;i<yvalue.length;i++)
	        {
	    		yvalue[i]=+yvalue[i];
	        }
	        	generatewindWmsGraph(xvalue,time);
	          
	        }
	     });

}

function getHumidityWmsGraph(){
	var SiteId=5022;
	var date=$("#indate11").val()
	$.ajax( {
		url:'reports/getDailyWmsData.jsp?date='+date+'&SiteId='+SiteId,
      success:function(res) {
    	  time=res.split("@")[2].split(",");
    	  xvalue=res.split("@")[6].split(",");
    	for(i=0;i<xvalue.length;i++)
        {
    		xvalue[i]=+xvalue[i];
        }
    	for(i=0;i<yvalue.length;i++)
        {
    		yvalue[i]=+yvalue[i];
        }
        	generateHumidityWmsGraph(xvalue,time);
          
        }
     });

}






function generateWmsGraph(xvalue,yvalue,time){

	var xaxis=null;
	var fixed=null;
	var tilt=null;
	
//	alert("length"+xp.length);
	if(time.length!=1){
		xaxis=time;
	}else{
		xaxis=null;
	}
	
	if(xvalue.length!=1){
		fixed=xvalue;
	}else{
		fixed=null;
	}
	if(yvalue.length!=1){
		tilt=yvalue;
	}else{
		tilt=null;
	}
//	console.log("sun"+xvalue);
	Highcharts.chart('wmschart', {
	    title: {
	        text:'',
	        style: {

                font: 'normal 12px Verdana, sans-serif',
                color : 'black',
             
            }
	    },
	     

	   /* style:{
	    	fontsize:'1em'
	    },*/
	    xAxis: {
	        categories: xaxis
	    },
	    labels: {
	        items: [{
	            html: '',
	            style: {
	                left: '50%',
	                top: '50%',
	                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
	            }
	        }]
	    },
	    yAxis: {
	        title: {
	            enabled: true,
	            text:'Radiation[W/m2]',
	            style: {
	                fontWeight: 'normal',
	                
	            }
	        }
	        },
	     exporting: { enabled: false },
	    credits:false,
	    series: [{
	        type: 'spline',
	        name: 'Fixed',
	        color: '#e44a00',
	       data: fixed
	    }, {
	        type: 'spline',
	        name: 'Tilt',
	        color: '#6baa01',
	        data: tilt,
	        marker: {
	            lineWidth: 2,
	            lineColor: Highcharts.getOptions().colors[3],
	            fillColor: 'white'
	        }
	    }]
	});

}
function generateWmstempGraph(xvalue,yvalue,time){
	
	var xaxis=null;
	var ambient=null;
	var module=null;
	
//	alert("length"+xp.length);
	if(time.length!=1){
		xaxis=time;
	}else{
		xaxis=null;
	}
	
	if(xvalue.length!=1){
		ambient=xvalue;
	}else{
		ambient=null;
	}
	if(yvalue.length!=1){
		module=yvalue;
	}else{
		module=null;
	}
	Highcharts.chart('wmschart', {
	    title: {
	        text:'',
	    },
	    xAxis: {
	        categories: xaxis
	    },
	    yAxis: {
	        title: {
	            enabled: true,
	            text:'Temperature[°C]',
	            style: {
	                fontWeight: 'normal',
	                
	            }
	        }
	        },
	    labels: {
	        items: [{
	            html: '',
	            style: {
	                left: '50%',
	                top: '50%',
	                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
	            }
	        }]
	    },
	    credits:false,
	    series: [{
	        type: 'spline',
	        name: 'Ambient',
	        color: '#e44a00',
	       data: ambient
	    }, {
	        type: 'spline',
	        name: 'Module',
	        color: '#6baa01',
	        data: module,
	        marker: {
	            lineWidth: 2,
	            lineColor: Highcharts.getOptions().colors[3],
	            fillColor: 'white'
	        }
	    }]
	});

}

function generatewindWmsGraph(xvalue,time){
	var xaxis=null;
	var wind=null; 
	
//	alert("length"+xp.length);
	if(time.length!=1){
		xaxis=time;
	}else{
		xaxis=null;
	}
	
	if(xvalue.length!=1){
		wind=xvalue;
	}else{
		wind=null;
	}
	 
	Highcharts.chart('wmschart', { 
	    title: {
	        text:'',
	    },
	    xAxis: {
	        categories: xaxis
	    },
	    yAxis: {
	        title: {
	            enabled: true,
	            text:'WindSpeed[kmph]',
	            style: {
	                fontWeight: 'normal',
	                
	            }
	        }
	        },
	    labels: {
	        items: [{
	            html: '',
	            style: {
	                left: '50%',
	                top: '50%',
	                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
	            }
	        }]
	    },
	    credits:false,
	    series: [ {
	        type: 'spline',
	        name: 'Wind Speed[kmph]',
	        color: '#6baa01',
	        data: wind,
	        marker: {
	            lineWidth: 2,
	            lineColor: Highcharts.getOptions().colors[3],
	            fillColor: 'white'
	        }
	    }]
	});

}


function generateHumidityWmsGraph(xvalue,time)
{
	var xaxis=null;
	var humd=null; 
	
//	alert("length"+xp.length);
	if(time.length!=1){
		xaxis=time;
	}else{
		xaxis=null;
	}
	
	if(xvalue.length!=1){
		humd=xvalue;
	}else{
		humd=null;
	}
Highcharts.chart('wmschart', {
    title: {
        text:'',
    },
    xAxis: {
        categories: xaxis
    },
    yAxis: {
        title: {
            enabled: true,
            text:'Humidity[%]',
            style: {
                fontWeight: 'normal',
                
            }
        }
        },
    labels: {
        items: [{
            html: '',
            style: {
                left: '50%',
                top: '50%',
                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
            }
        }]
    },
    credits:false,
    series: [ {
        type: 'spline',
        name: 'Humidity[%]',
        color: '#e44a00',
        data: humd,
        marker: {
            lineWidth: 2,
            lineColor: Highcharts.getOptions().colors[3],
            fillColor: 'white'
        }
    }]
});

} 
function getTrackerDashChart(traId) {  
	var Sang=new Array();
	var Tang=new Array();
	var xp=new Array();
	var date=$("#indate1").val();  
	var traId=$("#traId").val();  
	$.ajax( {
		url:'reports/getTrackerBarcharts.jsp?traId='+traId+'&date='+date,
        success:function(data) {   
        	Sang=data.split("@")[0].split(",");
            Tang=data.split("@")[1].split(","); 
            xp=data.split("@")[2].split(",");
            
              	for(i=0;i<Sang.length;i++)
              	{ 
              		Sang[i]=+Sang[i];
              	} 
              	for(i=0;i<Tang.length;i++)
              	{
              		Tang[i]=+Tang[i];
              	}
              	for(i=0;i<xp.length;i++)
                {
            		xp[i]=+xp[i];
                }  
      	generateTrackerGraph(Sang,Tang,xp);   
        }
     });
} 

/*----------------------- scb charts ----------------*/

var dates=new Array(); 
var values=new Array(); 
function getScbstringChart(smbid){ 
	var date=$("#indate2").val();  
	//var SMBID=$("#SMBID").val();   
	$.ajax( {		
        url:'reports/getScbindvChart.jsp?SMBID='+smbid+'&date='+date,
        success:function(data) { 
        	dates=data.split("@")[0].split(","); 
        	s1=data.split("@")[1].split(","); 
        	s2=data.split("@")[2].split(",");
        	s3=data.split("@")[3].split(",");
        	s4=data.split("@")[4].split(",");
        	s5=data.split("@")[5].split(","); 
        	s6=data.split("@")[6].split(",");
        	s7=data.split("@")[7].split(",");
        	s8=data.split("@")[8].split(",");
        	s9=data.split("@")[9].split(",");
        	s10=data.split("@")[10].split(",");
        	s11=data.split("@")[11].split(","); 
        	s12=data.split("@")[12].split(",");
        	s13=data.split("@")[13].split(",");
        	s14=data.split("@")[14].split(",");
        	s15=data.split("@")[15].split(","); 
        	s16=data.split("@")[16].split(",");
        	s17=data.split("@")[17].split(",");
        	s18=data.split("@")[18].split(",");
        	s19=data.split("@")[19].split(",");
        	s20=data.split("@")[20].split(",");
        	s21=data.split("@")[21].split(","); 
        	s22=data.split("@")[22].split(",");
        	s23=data.split("@")[23].split(",");
        	s24=data.split("@")[24].split(",");
        	for(i=0;i<s1.length;i++)
            {
        		s1[i]=+s1[i];
            }
        	for(i=0;i<s2.length;i++)
            {
        		s2[i]=+s2[i];
            }
        	for(i=0;i<s3.length;i++)
            {
        		s3[i]=+s3[i];
            }
        	for(i=0;i<s4.length;i++)
            {
        		s4[i]=+s4[i];
            }
        	for(i=0;i<s5.length;i++)
            {
        		s5[i]=+s5[i];
            }
        	for(i=0;i<s6.length;i++)
            {
        		s6[i]=+s6[i];
            }
        	for(i=0;i<s7.length;i++)
            {
        		s7[i]=+s7[i];
            }
        	for(i=0;i<s8.length;i++)
            {
        		s8[i]=+s8[i];
            }
        	for(i=0;i<s9.length;i++)
            {
        		s9[i]=+s9[i];
            }
        	for(i=0;i<s10.length;i++)
            {
        		s10[i]=+s10[i];
            }
        	for(i=0;i<s11.length;i++)
            {
        		s11[i]=+s11[i];
            }
        	for(i=0;i<s12.length;i++)
            {
        		s12[i]=+s12[i];
            }
        	for(i=0;i<s13.length;i++)
            {
        		s13[i]=+s13[i];
            }
        	for(i=0;i<s14.length;i++)
            {
        		s14[i]=+s14[i];
            }
        	for(i=0;i<s15.length;i++)
            {
        		s15[i]=+s15[i];
            }
        	for(i=0;i<s16.length;i++)
            {
        		s16[i]=+s16[i];
            }
        	for(i=0;i<s17.length;i++)
            {
        		s17[i]=+s17[i];
            }
        	for(i=0;i<s18.length;i++)
            {
        		s18[i]=+s18[i];
            }
        	for(i=0;i<s19.length;i++)
            {
        		s19[i]=+s19[i];
            }
        	for(i=0;i<s20.length;i++)
            {
        		s20[i]=+s20[i];
            }
        	for(i=0;i<s21.length;i++)
            {
        		s21[i]=+s21[i];
            }
        	for(i=0;i<s22.length;i++)
            {
        		s22[i]=+s22[i];
            }
        	for(i=0;i<s23.length;i++)
            {
        		s23[i]=+s23[i];
            }
        	for(i=0;i<s24.length;i++)
            {
        		s24[i]=+s24[i];
            }
        	generateSmbstringGraph(dates,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24);  
        }
     });
}



function getScbParamGuases(smbid){
	$.ajax( {		
        url:'reports/getScbParamGuases.jsp?smbid='+smbid,
        success:function(data) { 
//        	alert("data"+data);
        	volt=data.split("@")[0]; 
        	cur=data.split("@")[1];
        	
        	pow=data.split("@")[2];
        //	alert("$$4"+volt);
        	/*for(i=0;i<cur.length;i++)
            {
        		cur[i]=+cur[i];
            }*/
        	
        	generateSmbPowerChart(pow,volt,cur)
        	//generateSmbstringGraph(dates,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24);  
        }
     });
}

function generateSmbPowerChart(pow,volt,cur){
	var speedometerChart = new FusionCharts({
        type: 'angulargauge',
     //   id : "chartobject-24",
        renderAt: 'powchart-container',
        width: '350',
        height: '162',
        dataFormat: 'json',
        dataSource:{
        	 "chart": {
        	        "manageresize": "1",
        	        "origw": "450",
        	        "origh": "200",
        	        "palette": "3",
        	        "bgalpha": "0",
        	        "bgcolor": "FFFFFF",
        	        "lowerlimit": "0",
        	        "upperlimit": "300",
        	        "numbersuffix": "KW",
        	        "showborder": "0",
        	        "basefontcolor": "FFFFDD",
        	        "charttopmargin": "5",
        	        "chartbottommargin": "5",
        	        "tooltipbgcolor": "009999",
        	        "gaugefillmix": "{dark-10},{light-70},{dark-10}",
        	        "gaugefillratio": "3",
        	        "pivotradius": "8",
        	        "gaugeouterradius": "120",
        	        "gaugeinnerradius": "70%",
        	        "gaugeoriginx": "245",
        	        "gaugeoriginy": "170",
        	        "trendvaluedistance": "5",
        	        "tickvaluedistance": "3",
        	        "managevalueoverlapping": "1",
        	        "valuebelowpivot": "1",
        	        "showvalue": "1",
        	        "autoaligntickvalues": "1"
        	    },
        	    "colorrange": {
        	        "color": [
        	            {
        	                "minvalue": "0",
        	                "maxvalue": "100",
        	                "code": "FF654F"
        	            },
        	            {
        	                "minvalue": "100",
        	                "maxvalue": "200",
        	                "code": "F6BD0F"
        	            },
        	            {
        	                "minvalue": "200",
        	                "maxvalue": "300",
        	                "code": "8BBA00"
        	            }
        	        ]
        	    },
        	    "dials": {
        	        "dial": [
        	            {
        	                "value":pow,
        	                "rearextension": "10",
        	                "basewidth": "10"
        	            }
        	        ]
        	    },
        	    "trendpoints": {
        	        "point": [
        	            {
        	                "startvalue": "23",
        	                "displayvalue": "Average",
        	                "usemarker": "1",
        	                "markerradius": "8",
        	                "dashed": "1",
        	                "dashlen": "2",
        	                "dashgap": "2"
        	            }
        	        ]
        	    },
        	    "annotations": {
        	        "groups": [
        	            {
        	                "id": "Grp1",
        	                "showbelow": "1",
        	                "showshadow": "1",
        	                "items": [
        	                    {
        	                        "type": "rectangle",
        	                        "x": "$chartStartX+5",
        	                        "y": "$chartStartY+5",
        	                        "tox": "$chartEndX-5",
        	                        "toy": "$chartEndY-5",
        	                        "radius": "10",
        	                        "fillcolor": "009999,333333",
        	                        "showborder": "0"
        	                    }
        	                ]
        	            }
        	        ]
        	    }
                
            }
    });
    speedometerChart.render();
    var speedometerChart = new FusionCharts({
        type: 'angulargauge',
 //       id : "chartobject-24",
        renderAt: 'voltchart-container',
        width: '230',
        height: '120',
        dataFormat: 'json',
        dataSource:{
        	 "chart": {
        	       /*  "caption": "Revenue - 2013", */
        	        "manageresize": "1",
        	        "origw": "400",
        	        "origh": "250",
        	        "managevalueoverlapping": "1",
        	        "autoaligntickvalues": "1",
        	        "bgcolor": "FFFFFF",
        	        "fillangle": "45",
        	        "upperlimit": "1000",
        	        "lowerlimit": "100",
        	        "majortmnumber": "10",
        	        "majortmheight": "8",
        	        "showgaugeborder": "0",
        	        "gaugeouterradius": "140",
        	        "gaugeoriginx": "205",
        	        "gaugeoriginy": "206",
        	        "gaugeinnerradius": "2",
        	        "formatnumberscale": "1",
        	       "numbersuffix": "v",
        	        "decmials": "2",
        	        "tickmarkdecimals": "1",
        	        "pivotradius": "10",
        	        "showpivotborder": "1",
        	        "pivotbordercolor": "000000",
        	        "pivotborderthickness": "10",
        	        "pivotfillmix": "666666",
        	        "tickvaluedistance": "10",
        	        "valuebelowpivot": "1",
        	        "showvalue": "1",
        	        "showborder": "0",
        	        "dataEmptyMessage":"dataEmptyMessageFont"
        	    },
        	    "colorrange": {
        	        "color": [
        	            {
        	                "minvalue": "100",
        	                "maxvalue": "250",
        	                "code": "e44a00"
        	            },
        	            {
        	                "minvalue": "250",
        	                "maxvalue": "500",
        	                "code": "f8bd19"
        	            },
        	            {
        	                "minvalue": "500",
        	                "maxvalue": "750",
        	                "code": "6baa01"
        	            },
        	            {
        	                "minvalue": "750",
        	                "maxvalue": "1000",
        	                "code": "7379F5"
        	            }
        	        ]
        	    },
        	    "dials": {
        	        "dial": [
        	            {
        	                "value": volt,
        	                "borderalpha": "0",
        	                "bgcolor": "000000",
        	                "basewidth": "20",
        	                "topwidth": "1",
        	                "radius": "130"
        	            }
        	        ]
        	    },
        	    "annotations": {
        	        "groups": [
        	            {
        	                "x": "205",
        	                "y": "207.5",
        	                "items": [
        	                    {
        	                        "type": "circle",
        	                        "x": "0",
        	                        "y": "2.5",
        	                        "radius": "150",
        	                        "startangle": "0",
        	                        "endangle": "180",
        	                        "fillpattern": "linear",
        	                        "fillasgradient": "1",
        	                        "fillcolor": "dddddd,666666",
        	                        "fillalpha": "100,100",
        	                        "fillratio": "50,50",
        	                        "fillangle": "0",
        	                        "showborder": "1",
        	                        "bordercolor": "444444",
        	                        "borderthickness": "2"
        	                    },
        	                    {
        	                        "type": "circle",
        	                        "x": "0",
        	                        "y": "0",
        	                        "radius": "145",
        	                        "startangle": "0",
        	                        "endangle": "180",
        	                        "fillpattern": "linear",
        	                        "fillasgradient": "1",
        	                        "fillcolor": "666666,ffffff",
        	                        "fillalpha": "100,100",
        	                        "fillratio": "50,50",
        	                        "fillangle": "0"
        	                    }
        	                ]
        	            }
        	        ]
        	    }
                
           }
    });
    speedometerChart.render();
 //   alert("current"+cur);
    var csatGauge = new FusionCharts({
        "type": "angulargauge",
        "renderAt": "tcurchart-container",
        "width": "200",
        "height": "120",
        "numbersuffix": "A",
        "dataFormat": "json",
        "valuebelowpivot": "1",
        "showvalue": "1",
        "dataSource":{
               "chart": {
                  "lowerLimit": "0",
                  "upperLimit": "200",
                  "theme": "fint",
               },
               "colorRange": {
                  "color": [
                     {
                        "minValue": "0",
                        "maxValue": "50",
                        "code": "#e44a00"
                     },
                     {
                        "minValue": "50",
                        "maxValue": "150",
                        "code": "#f8bd19"
                     },
                     {
                        "minValue": "150",
                        "maxValue": "200",
                        "code": "#6baa01"
                     }
                  ]
               },
               "dials": {
                  "dial": [
                     {
                        "value":cur,
                     }
                  ]
               }
            }
      });

    csatGauge.render();
}


function getTabularScreen(){
	hideDashboardDiv();
	$.ajax( {
        url:'reports/getTabularReportsScreen.jsp',
        success:function(data) {
           $('#datapart').html(data);
           getLatestData();
          
        }
     });
}
   
 function generatetodengGraph(dates,values){
	 	var xaxis=null;
		var yaxis=null; 
		
//		alert("length"+xp.length);
		if(dates.length!=1){
			xaxis=dates;
		}else{
			xaxis=null;
		} 
		if(values.length!=1){
			yaxis=values;
		}else{
			yaxis=null;
		}
	
	Highcharts.chart('todeng', {
	    title: {
	        text: ''
	    },
	    xAxis: {
	        categories: xaxis		       
	    },
	    yAxis: {
	    	title: {
                text: 'Energy[KWh]'
            },
	    },
	    plotOptions: {
            
            tooltip: {
                formatter: function() {
                    var s = [];
                    
                    $.each(this.points, function(i, point) {
                        s.push('<span style="color:#D31B22;font-weight:bold;">'+ point.series.name +' : '+
                            point.y +'<span>');
                    });
                    
                    return s.join(' and ');
                },
                shared: true
            },
            series: {
                colorByPoint: true
            }
        },
        exporting: { enabled: false },
	    credits:false,
	    series: {
            colorByPoint: true
        },
	    series: [{showInLegend: false,
	        type: 'column',
	        name: 'Energy',
	        data: yaxis
	    }]
	});


}  
 function generateSmbstringGraph(dates,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24){
	 	var xaxis=null;
	 	var ss1=null;
		var ss2=null;
		var ss3=null;
		var ss4=null;
		var ss5=null;
		var ss6=null;
		var ss7=null;
		var ss8=null;
		var ss9=null;
		var ss10=null;
		var ss11=null;
		var ss12=null;
		var ss13=null;
		var ss14=null;
		var ss15=null;
		var ss16=null;
		var ss17=null;
		var ss18=null;
		var ss19=null;
		var ss20=null;
		var ss21=null;
		var ss22=null;
		var ss23=null;
		var ss24=null;
		
//		alert("length"+xp.length);
		if(dates.length!=1){
			xaxis=dates;
		}else{
			xaxis=null;
		} 
		if(s1.length!=1){
			ss1=s1;
		}else{
			ss1=null;
		}
		if(s2.length!=1){
			ss2=s2;
		}else{
			ss2=null;
		} 
		if(s3.length!=1){
			ss3=s3;
		}else{
			ss3=null;
		}
		if(s4.length!=1){
			ss4=s4;
		}else{
			ss4=null;
		} 
		if(s5.length!=1){
			ss5=s5;
		}else{
			ss5=null;
		}
		if(s6.length!=1){
			ss6=s6;
		}else{
			ss6=null;
		} 
		if(s7.length!=1){
			ss7=s7;
		}else{
			ss7=null;
		}
		if(s8.length!=1){
			ss8=s8;
		}else{
			ss8=null;
		} 
		if(s9.length!=1){
			ss9=s9;
		}else{
			ss9=null;
		}
		if(s10.length!=1){
			ss10=s10;
		}else{
			ss10=null;
		} 
		if(s11.length!=1){
			ss11=s11;
		}else{
			ss11=null;
		}
		if(s12.length!=1){
			ss12=s12;
		}else{
			ss12=null;
		} 
		if(s13.length!=1){
			ss13=s13;
		}else{
			ss13=null;
		}
		if(s14.length!=1){
			ss14=s14;
		}else{
			ss14=null;
		} 
		if(s15.length!=1){
			ss15=s15;
		}else{
			ss15=null;
		}
		if(s16.length!=1){
			ss16=s16;
		}else{
			ss16=null;
		} 
		if(s17.length!=1){
			ss17=s17;
		}else{
			ss17=null;
		}
		if(s18.length!=1){
			ss18=s18;
		}else{
			ss18=null;
		} 
		if(s19.length!=1){
			ss19=s19;
		}else{
			ss19=null;
		}
		if(s20.length!=1){
			ss20=s20;
		}else{
			ss20=null;
		} 
		if(s21.length!=1){
			ss21=s21;
		}else{
			ss21=null;
		}
		if(s22.length!=1){
			ss22=s22;
		}else{
			ss22=null;
		} 
		if(s23.length!=1){
			ss23=s23;
		}else{
			ss23=null;
		}
		if(s24.length!=1){
			ss24=s24;
		}else{
			ss24=null;
		} 
	 
		Highcharts.chart('stringcurr', {
			chart: {
		        type: 'spline'
		    },
		    title: {
		        text: ''
		    }, 
		    xAxis: {
		        categories: xaxis
		    },
		    labels: {
		        items: [{
		            html: '',
		            style: {
		                left: '100%',
		                top: '100%',                                             
		                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
		            }
		        }]
		    },
		    exporting: { enabled: false },
		    credits:false,
		    series: [{ 
		       name: 'S1', 
		       data: ss1
		    },{ 
		        name: 'S2', 
		        data: ss2 
		    },{ 
		        name: 'S3', 
		        data: ss3 
		    },{ 
		        name: 'S4', 
		        data: ss4  
		    },{ 
		        name: 'S5', 
		        data: ss5 
		    },{ 
		        name: 'S6', 
		        data: ss6 
		    },{ 
		        name: 'S7', 
		        data: ss7  
		    },{ 
		        name: 'S8', 
		        data: ss8  
		    },{ 
		        name: 'S9', 
		        data: ss9  
		    },{ 
		        name: 'S10', 
		        data: ss10  
		    },{ 
		        name: 'S11', 
		        data: ss11  
		    },{ 
		        name: 'S12', 
		        data: ss12 
		    },{ 
		        name: 'S13', 
		        data: ss13 
		    },{ 
		        name: 'S14', 
		        data: ss14  
		    },{ 
		        name: 'S15', 
		        data: ss15 
		    },{ 
		        name: 'S16', 
		        data: ss16 
		    },{ 
		        name: 'S17', 
		        data: ss17  
		    },{ 
		        name: 'S18', 
		        data: ss18  
		    },{ 
		        name: 'S19', 
		        data: ss19  
		    },{ 
		        name: 'S20', 
		        data: ss20  
		    },{ 
		        name: 'S21', 
		        data: ss21  
		    },{ 
		        name: 'S22', 
		        data: ss22 
		    },{ 
		        name: 'S23', 
		        data: ss23 
		    },{ 
		        name: 'S24', 
		        data: ss24  
		    },]
		});

	} 
 function generateprGraph(dates,values,type,data){  
	//  alert("hjhhh"+type+data);
	 if(type=='pie'){  
		 var xaxis=null;  
			if(values.length!=1){
				xaxis=values;
			}else{
				xaxis=null;
			} 
			 
		 //console.log("tyyyy"+type); 
			Highcharts.chart('invpr', {	 
			    chart: {
			        type: 'pie',  
			    },
			    title: {
			        text: ''
			    },
			    credits:false,
			    tooltip: {
			        pointFormat: '{series.name} : {point.y}'
			    }, 
			     legend:{
		            layout: 'vertical',
		            align: 'left',
		            verticalAlign: 'middle',
		             labelFormatter: function () {
		                return  this.name+'(' + this.y+')%';
		            }, 
		            x:-14,
		            y: 0,
		            borderWidth: 0
		   
		        }, 
			    plotOptions: {
			    	 pie: {
				            allowPointSelect: true,
				            cursor: 'pointer',
				            depth: 25,
				            dataLabels: {
				                enabled: false
				            },
				            showInLegend: true
				        }
			    	/*pie: {
			            allowPointSelect: true,
			            cursor: 'pointer',
			            depth: 25,
			            dataLabels: {
			                enabled: false,
			                format: '{point.name}'
			            },
			            showInLegend: true
			        }*/
			    },
			    exporting: { enabled: false },
			    series: [{ showInLegend: true, 
			    	name: 'PR',
			    	type: 'pie',	        
			        data: [	             
		                {
		                name: 'PR',
		                y: parseInt(data.split("@")[0]),
		                color:"#008ee4"
		                },{ 
		                name: 'Remaining',
		                y: parseInt(data.split("@")[1]),
		                color:"#6baa01"
		                } 
			        ]
			    }]
			});
			}else{  
			type='column';   
			
	 var xaxis=null;  
		if(values.length!=1){
			xaxis=values;
		}else{
			xaxis=null;
		} 
		 
	 //console.log("tyyyy"+type); 
		Highcharts.chart('invpr', {
		    title: {
		        text: ''
		    },
		    xAxis: {
		        categories: dates		       
		    }, 
		    yAxis: {
		    	title: {
	                text: 'Energy[KWh]'
	            },
		    },
		    legend:{
	            layout: 'horizontal',
	            align: 'left',
	            verticalAlign: 'top',
	            labelFormatter: function () {
	                return  this.name+'(' + this.y+')';
	            },
	            x:-15,
	            y: 0,
	            borderWidth: 0
	   
	        },
		    plotOptions: {
		    	 pie: {
			            allowPointSelect: true,
			            cursor: 'pointer',
			            depth: 25,
			            dataLabels: {
			                enabled: true,
			                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
			                style: {
			                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
			                }
			            },
			            showInLegend: true
			        },
	            tooltip: {
	                formatter: function() {
	                    var s = [];
	                    
	                    $.each(this.points, function(i, point) {
	                        s.push('<span style="color:#D31B22;font-weight:bold;">'+ point.series.name +' : '+
	                            point.y +'<span>');
	                    });
	                    
	                    return s.join(' and ');
	                },
	                shared: true
	            },
	            pie: {
		            allowPointSelect: true,
		            cursor: 'pointer',
		            depth: 25,
		            dataLabels: {
		                enabled: false,
		                format: '{point.name}'
		            },
		            showInLegend: true
		        },
	            series: {
	                colorByPoint: true
	            }
	        },
		    credits:false,
		    series: {
	            colorByPoint: true
	        }, 
	        series: [{showInLegend: false,
		        type:  type,
		        name: 'Energy',
		        data: xaxis
		    }],
		});
			} 
	} 
 
function generateradpowGraph(time,dcp,acp,rad){  
	var xaxis=null;
	var dc=null;
	var ac=null;
	var radiation=null;
	
//	alert("length"+xp.length);
	if(time.length!=1){
		xaxis=time;
	}else{
		xaxis=null;
	}
	
	if(dcp.length!=1){
		dc=dcp;
	}else{
		dc=null;
	}
	if(acp.length!=1){
		ac=acp;
	}else{
		ac=null;
	}
	if(rad.length!=1){
		radiation=rad;
	}else{
		radiation=null;
	}
	Highcharts.chart('invradpow', {
		chart: {
        	zoomType: 'xy' 
        },
	    title: {
	        text:''
	    },
	    xAxis: {
	        categories: xaxis
	    },
	    yAxis: [{ // Primary yAxis
            labels: {
                format: '{value}W/m2',
                style: {
                    color: Highcharts.getOptions().colors[2]
                }
            },
            title: {
                text: 'Radiation Tilt',
                style: {
                    color: Highcharts.getOptions().colors[2]
                }
            },
            opposite: true

        }, { // Secondary yAxis
            gridLineWidth: 0,
            title: {
                text: 'DC Power',
                style: {
                    color: Highcharts.getOptions().colors[0]
                }
            },
            labels: {
                format: '{value}KW  ',
                style: {
                    color: Highcharts.getOptions().colors[0]
                }
            }

        }, { // Tertiary yAxis
            gridLineWidth: 0,
            title: {
                text: 'AC Power',
                style: {
                    color: Highcharts.getOptions().colors[1]
                }
            },
            labels: {
                format: '{value}KW  ',
                style: {
                    color: Highcharts.getOptions().colors[1]
                }
            },
            opposite: true
        }],
	    labels: {
	        items: [{
	            html: '',
	            style: {
	                left: '100%',
	                top: '100%',
	                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
	            }
	        }]
	    }, 	    
	    exporting: { enabled: false },
	    credits:false,
	    series: [{
	        type: 'spline',
	        name: 'Radiation Tilt',
	        color: '#33bdda',
	       data: radiation
	    }, 
	    {
	        type: 'spline',
	        name: 'DC Power',
	        color: '#e44a00',
	       data: dc
	    },
	    {
	        type: 'spline',
	        name: 'AC Power',
	        color: '#6baa01',
	        data: ac, 
	        marker: {
	            lineWidth: 2,
	            lineColor: Highcharts.getOptions().colors[3],
	            fillColor: 'white'
	        }
	    }]
	});

}
  
 
/*---------------------------------------tracker graphs---------------------*/

function generateTrackerGraph(Sang,Tang,xp){  
	
	var xaxis=null;
	var Tdata=null;
	var Sdata=null;
	
//	alert("length"+xp.length);
	if(xp.length!=1){
		xaxis=xp;
	}else{
		xaxis=null;
	}
	
	if(Tang.length!=1){
		Tdata=Tang;
	}else{
		Tdata=null;
	}
	if(Sang.length!=1){
		Sdata=Sang;
	}else{
		Sdata=null;
	}
	
	Highcharts.chart('container', {
	    title: {
	        text: ''
	    },
	    xAxis: {
	        categories: xaxis,
	    },
	    labels: {
	        items: [{
	            html: '',
	            style: {
	                left: '100%',
	                top: '100%',
	                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
	            }
	        }]
	    },
	    exporting: { enabled: false },
	    credits:false,
	    series: [{
	        type: 'spline',
	        name: 'SunAngle',
	        color: '#6baa01',
	       data: Sdata,
	    }, {
	        type: 'spline',
	        name: 'TrackerAngle', 
	        data: Tdata,
	        color: '#e44a00'
	        /*marker: {
	            lineWidth: 2,
	            lineColor: Highcharts.getOptions().colors[3],
	            fillColor: 'white'
	        }*/
	    }]
	});

} 
/*------------------scb Graphs----------------------*/
function getScbpie(){ 
//	alert("1");
	hideDashboardDiv();
	$.ajax( {		
       url:'reports/getScbPiechart.jsp', 
       success:function(data) {        	
       	generatescbPie(data); 
       }
    });
} 


function generatescbPie(data){ 
	Highcharts.chart('smbpie_chart', {		
	    chart: {
	        type: 'pie',
//	        backgroundColor:'#E6E6E6',
            height:150 ,
            width:430 ,
            margin:4, 
//            marginLeft:40,
            useHTML:true,
           /* options3d: {
                enabled: true,
                alpha: 45,
                beta: 0
            }*/
	    },
	    title: {
	        text: ''
	    },
	    credits:false,
	    /*tooltip: {
	        pointFormat: '{series.name} : {point.y}'
	    },*/
	    legend:{
            layout: 'horizontal',
            align: 'left',
            verticalAlign: 'top',
            /*labelFormatter: function () {
                return  this.name+'(' + this.y+')';
            },*/
            x:-15,
            y: 0,
            borderWidth: 0
   
        },
	    plotOptions: {
	    	  pie: {
	            allowPointSelect: true,
	            cursor: 'pointer',
	            depth: 25,
	            dataLabels: {
	                enabled: true,
	                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
	                style: {
	                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
	                }
	            },
	            showInLegend: true
	        }
	    },
	    series: [{ showInLegend: false,
	    	name: 'SCB', 
	        type: 'pie',	        
	        data: [	             
                {
                name: 'SCB01',
                y: parseInt(data.split(",")[0]),  
                //color:"#008ee4"
                },{ 
                name: 'SCB02',
                y: parseInt(data.split(",")[1]),
                //color:"#6baa01"
                },{ 
                name: 'SCB03',
                y: parseInt(data.split(",")[2]),
                //color:"#f8bd19"
                },{
                name: 'SCB04',
                y: parseInt(data.split(",")[3]),
                //color:"#e44a00"
                },{
                name: 'SCB05',
                y: parseInt(data.split(",")[4]), 
                //color:"#33bdda"
                },{
                name: 'SCB06',
                y: parseInt(data.split(",")[5]),
                //color:"#7D3C98"
                },{
                name: 'SCB07',
                y: parseInt(data.split(",")[6]), 
                //color:"#17202A"
                },{ 
                name: 'SCB08',
                y: parseInt(data.split(",")[7]),
                //color:"#FF00FF"
                },{
                name: 'SCB09',
                y: parseInt(data.split(",")[8]), 
                //color:"#808000"
                },{
                name: 'SCB10',
                y: parseInt(data.split(",")[9]),
                //color:"#6baa01"
                },{
                name: 'SCB11',
                y: parseInt(data.split(",")[10]), 
                //color:"#6baa01"
                },{ 
                name: 'SCB12',
                y: parseInt(data.split(",")[11]),
                //color:"#6baa01"
                },{
                name: 'SCB13',
                y: parseInt(data.split(",")[12]),
                //color:"#6baa01"
                },{
                name: 'SCB14',
                y: parseInt(data.split(",")[13]),
                //color:"#6baa01"
                },{
                name: 'SCB15',
                y: parseInt(data.split(",")[14]),
                //color:"#6baa01"
                }
                
	        ]
	    }]
	});
	
}

var Id=new Array();
var cur=new Array();
var pow=new Array(); 
function getCurrPowScbChart(){ 
//	alert("2");
	hideDashboardDiv();
	$.ajax( {		
        url:'reports/getScbPowLineChart.jsp',
        success:function(data) {  
        	Id=data.split("@")[0].split(",");
        	cur=data.split("@")[1].split(",");
        	pow=data.split("@")[2].split(",");  
        	for(i=0;i<cur.length;i++)
            {
        		cur[i]=+cur[i];
            }
        	for(i=0;i<pow.length;i++)
            {
        		pow[i]=+pow[i];
            } 
        	generateScbPowcurr(Id,cur,pow);  
           
        }
     });
} 


function generateScbPowcurr(Id,cur,pow){
	//alert("1111111"+Id);
	Highcharts.chart('PowchartSmbChart', {
	    title: {
	        text: '', 
	    },
	    xAxis: {
	        categories: Id		       
	    },
	    yAxis: {
	    	title: {
                text: ''
            },
	    },
	    plotOptions: {
            
            tooltip: {
                formatter: function() {
                    var s = [];
                    
                    $.each(this.points, function(i, point) {
                        s.push('<span style="color:#D31B22;font-weight:bold;">'+ point.series.name +' : '+
                            point.y +'<span>');
                    });
                    
                    return s.join(' and ');
                },
                shared: true
            }
            /*series: {
                colorByPoint: true
            }*/
        },
	    credits:false,
	    series: {
            colorByPoint: true
        },
	    series: [{ 
	        type: 'column',
	        name: 'Current',
	        //color: '#33bdda',
	        color: '#6baa01',
	        data: cur
	    } ,
	    {
	        type: 'column',
	        name: 'Power',
	        color:'#e44a00',
	        data: pow
	    } ]
	}); 
} 

/*------------- tracker reports ---------*/

function getTrackerTabularScreen(){
//	alert("reports");
	hideDashboardDiv();
	document.getElementById("datapart").style.display="none";
	document.getElementById("resultpart").style.display="block";
	$.ajax({
        url:'reports/getTabularReportsScreen.jsp',
        success:function(data) {
           $('#resultpart').html(data);
      //      getLatestData();
          
        }
     });
}  

function getTrackerHistoryData(){
//	alert("gatherdata");
	var SiteId= 5022;
	var indate1=$("#indate1").val();
	var indate2=$("#indate2").val(); 
	$.ajax( {
        url:'reports/getTrackerHistoryReport.jsp?indate1='+indate1+'&indate2='+indate2+'&SiteId='+SiteId,
        success:function(data) {
           $('#tablelDiv').html(data);  
           callDataTable('table3');
        }
     });
}

function getLatestTrackerData(){
	var SiteId= 5022;
//	alert("123123");
	$.ajax( {
        url:'reports/getLatestTrackerReport.jsp?SiteId='+SiteId,
        success:function(data) {        	
           $('#tablelDiv').html(data); 
           callDataTable('table2');
        }
     });
}

 