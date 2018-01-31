function getDashboard(){  
	document.getElementById("pr_chart").innerHTML=document.getElementById("loading").innerHTML; 
	document.getElementById("todengcum").innerHTML=document.getElementById("loading").innerHTML;
	document.getElementById("invpow").innerHTML=document.getElementById("loading").innerHTML;
	document.getElementById("smb_chart").innerHTML=document.getElementById("loading").innerHTML;
	document.getElementById("smbPowchart").innerHTML=document.getElementById("loading").innerHTML;
	getweather();
	getinverter();
	getscbpie(); 
	getscbCurrPow();
	getinvdashpowGraph();
	getinvdasheng('daily');
	getprpie();
}
var dates=new Array(); 
var values=new Array();
var graphDayType; 
function getinvdasheng(daytype){   
	if(daytype=="daily"){ 
		var date=$("#indate5").val(); 
	}
  if(daytype=="monthly"){
	  var date=$("#monthmonth").val();
	  var date1=$("#monthyear").val();
	}
  if(daytype=="yearly"){
	  var date=$("#yearyear").val(); 
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
        	generatetodeng(dates,values);   
        }
     });
}
var time=new Array();
var dcp=new Array();
var acp=new Array();
var rad=new Array();
function getinvdashpowGraph(){   
	var date=$("#indate3").val();
	//alert("jjjj"+indate3);
	$.ajax( {		
        url:'reports/getInvDashPowerChart.jsp?date='+date,
        success:function(data) {   
        	//alert("-----"+data);
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
        	generatepowGraph(time,dcp,acp,rad);
        	// alert("-----"+time+dcp+acp+rad);
        	//generateHomeMeterGraph(xvalues,yvalues,reportType);
           
        }
     });
} 
function getscbpie(){ 
	// alert("data");
	$.ajax( {		
        url:'reports/getScbPiechart.jsp', 
        success:function(data) {        	
        	generatePiscb(data); 
        	//alert("data");
        }
     });
} 
function getprpie(){ 
	// alert("data");
	$.ajax( {		
        url:'reports/getPrPiechart.jsp', 
        success:function(data) {        	
        	generatePipr(data); 
        	//alert("data");
        }
     });
} 
var Id=new Array();
var cur=new Array();
var pow=new Array(); 
function getscbCurrPow(){   
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
        	generatePowcurr(Id,cur,pow);  
           
        }
     });
} 
function getInvengpie(){ 
	$.ajax( {		
        url:'reports/getInvPieTodChart.jsp', 
        success:function(data) {        	
        	generatePi(data); 
        }
     });
}
    
var xvalues=new Array();
var yvalues=new Array();


function getweather(){
	$.ajax( {
        url:'dashboard/viewClient.ws',
        success:function(data) {        	
           $('#weats').html(data);
           
        }
     });
}
function getinverter(){
	$.ajax( {
        url:'inverterview/invview.ws',
        success:function(data) {        	
           $('#invs').html(data);
           
        }
     });
} 
function getAlertsTable(){
	$.ajax( {
        url:'getAlertsTable.jsp',
        success:function(data) {        	
           $('#alertsTable').html(data);
           
        }
     });
} 


function generatetodeng(dates,values){
	
	var xaxis=null;
	var yaxis=null; 
	
//	alert("length"+xp.length);
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
	 
	
	Highcharts.chart('todengcum', { 
		/*chart: {
			height:'150px', 
			// width:'300px',
        },*/
	    title: {
	        text: '', 
	    },
	    xAxis: {
	        categories: xaxis,
	        labels: {
                rotation:-45
            },
	    },
	    yAxis: {
	    	title: {
                text: ' '
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
function generatepowGraph(time,dcp,acp,rad){
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
Highcharts.chart('invpow', {
    chart: {
        zoomType: 'xy'
    },
    title: {
        text: ''
    }, 
    xAxis: [{
        categories: xaxis,
        crosshair: true
    }],
    yAxis: [{ // Primary yAxis
        labels: {
            format: '{value}Kw',
            style: {
                color: Highcharts.getOptions().colors[2]
            }
        },
        title: {
            text: 'AC Power',
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
            format: '{value} Kw',
            style: {
                color: Highcharts.getOptions().colors[0]
            }
        }

    }, { // Tertiary yAxis
        gridLineWidth: 0,
        title: {
            text: 'Radiation-Tilt',
            style: {
                color: Highcharts.getOptions().colors[1]
            }
        },
        labels: {
            format: '{value} [W/m2]',
            style: {
                color: Highcharts.getOptions().colors[1]
            }
        },
        opposite: true
    }],
    exporting: { enabled: false },
    tooltip: {
        shared: true
    },
    /*legend: {
        layout: 'vertical',
        align: 'left',
        x: 80,
        verticalAlign: 'top',
        y: 55,
        floating: true,
        backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'
    },*/
    series: [{
        name: 'Radiation',
        type: 'spline',
        yAxis: 1,
        data: radiation,
        //dashStyle: 'shortdot',
        tooltip: {
            valueSuffix: ' W/m2'
        }

    }, {
        name: 'DC Power',
        type: 'spline',
        yAxis: 2,
        data: dc,
        marker: {
            enabled: false
        }, 
        tooltip: {
            valueSuffix: ' Kw'
        }

    }, {
        name: 'AC Power',
        type: 'spline',
        data: ac,
        tooltip: {
            valueSuffix: ' Kw'
        }
    }]
});
}
function generateHomeMeterGraph(xvalues,yvalues){
	Highcharts.chart('metercontainer', {
	    title: {
	        text: ''
	    },
	    xAxis: {
	        categories: xvalues		       
	    },
	    yAxis: {
	    	title: {
                text: 'Liters'
            },
	    },
//	    labels: {
//	        items: [{
//	            html: 'Total consumption',
//	            style: {
//	                left: '50px',
//	                top: '18px',
//	                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
//	            }
//	        }]
//	    },
	    credits:false,
	    series: [ {
	        type: 'spline',
	        name: 'Consumption',
	        data: yvalues,
	        marker: {
	        	enabled: false
	        }
	    }]
	});
}
function generatePowcurr(Id,cur,pow){
	//alert("1111111"+Id);
	Highcharts.chart('smbPowchart', {
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
        exporting: { enabled: false },
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
function generateHomeGraph(xvalues,yvalues,title){
	
		Highcharts.chart('container', {
		    title: {
		        text: ''
		    },
		    xAxis: {
		        categories: xvalues		       
		    },
		    yAxis: {
		    	title: {
                    text: 'Liters'
                },
		    },
//		    labels: {
//		        items: [{
//		            html: 'Total consumption',
//		            style: {
//		                left: '50px',
//		                top: '18px',
//		                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
//		            }
//		        }]
//		    },
		    credits:false,
		    series: [{showInLegend: false,
		        type: 'column',
		        name: 'consumption',
		        data: yvalues
		    }]
		});

	
}

function generatePi(data){
	//alert("---"+data);
	//alert("1"+parseInt(data.split(",")[0]));
	
	Highcharts.chart('pi_chart', {		
	    chart: {
	        type: 'pie',
//	        backgroundColor:'#E6E6E6',
            height:170 ,
            margin:4, 
//            marginLeft:40,
            useHTML:true,
            options3d: {
                enabled: true,
                alpha: 45,
                beta: 0
            }
	    },
	    title: {
	        text: ''
	    },
	    credits:false,
	    tooltip: {
	        pointFormat: '{series.name} : {point.y}'
	    },
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
	            /*dataLabels: {
	                enabled: false,
	                format: '{point.name}'
	            },*/
	            showInLegend: true
	        }
	    },
	    series: [{ 
	        type: 'pie',	        
	        data: [	             
                {
                name: 'INV01',
                y: parseInt(data.split(",")[0]),  
                color:"#058DC7"
                },
                { name: 'INV02',
                  y: parseInt(data.split(",")[1]),
                  color:"#50B432"
                 } 
	        ]
	    }]
	});
	
} 
function generatePipr(data){  
	Highcharts.chart('pr_chart', {		
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
            layout: 'horizontal',
            align: 'left',
            verticalAlign: 'bottom',
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
	
}
function generatePiscb(data){ 
	Highcharts.chart('smb_chart', {		
	    chart: {
	        type: 'pie',
//	        backgroundColor:'#E6E6E6',
            height:200 ,
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
	    exporting: { enabled: false },
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
function wms(actionId){
//	getweatherGraphicalScreen();
//	alert("wms");
	hideDashboardDiv();
	$.ajax( {
        url:'dashboard/wms.ws',
        success:function(data) {
 //       	alert("data"+data);
           $('#datapart').html(data);
           callDataTable('table1');
           
        }
     });
}
 function invdash(actionId){
	hideDashboardDiv();
	$.ajax( {
        url:'inverter/invdash.ws',
        success:function(data) {
           $('#datapart').html(data);
           callDataTable('table2');
           getCharts();
        }
     });
}  
 
 
 function trackerdash(actionId){
//	 alert("11");
		hideDashboardDiv();
		$.ajax( {
	        url:'tracker/trackerdash.ws',
	        success:function(data) {
	           $('#datapart').html(data);
	           callDataTable('table1');
	        }
	     });
	}   