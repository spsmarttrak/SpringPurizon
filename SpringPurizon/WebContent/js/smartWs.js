 
/*--------------weather-------------*/
function viewWeatherData(SENID){
 
	var date='29-06-2017';
	$.ajax( {
        url:'dashboard/viewwms.ws?SENID='+SENID+'&date='+date,
        success:function(data) {
           $('#datapart').html(data);
            
           Reportsdata();
           callForDay('indate10');
           callForDay('indate11');
        }
     });
}
  
function hideDashboardDiv(){
	//alert("in function");
	document.getElementById("dashboard").style.display="none";
}

/*---------------------------- scb ------------------*/


/*function smbdash(){  
	hideDashboardDiv();
	$.ajax( {
        url:'smb/smbdash.ws',
        success:function(data) {
           $('#datapart').html(data);
           callDataTable('table1');
           getScbCharts();
           //getCharts();
        }
     });
}*/


/*function callDataTable(tableId){
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

//	            'csv',
	           
	        ]
		 
	 } );
}*/


function callForDates(){
	$('#dateRangePicker')
    .datepicker({
 	   autoclose: true,
        format: 'dd-mm-yyyy'
        
    });

}
function callForYear(){
	$('#dateRangePicker')
    .datepicker({
 	   autoclose: true,
        format: 'yyyy'
        
    });

}    
function viewTracker(traId){ 
	$.ajax( {
        url:'tracker/viewtracker.ws?traId='+traId,
        success:function(data) {
           $('#datapart').html(data);
           //callForDates();
           gettrkReports(traId);
           //callDataTable('table1');
           callForDay('indate1');
        }
     });
}
function viewSmb(smbid){  
	$.ajax( {
        url:'smb/viewsmb.ws?smbid='+smbid,
        success:function(data) {
           $('#datapart').html(data);
           getscbReports(smbid);
           //callDataTable('table1');
           callForDay('indate2');
        }
     });
}

function viewSmbLayout(){
	hideDashboardDiv();
	$.ajax( {
        url:'smb/smblayout.ws',
        success:function(data) {
           $('#datapart').html(data);  
        }
     });
	
}



function viewInverter(INVId){
//	alert("view tracker"+INVId);
	$.ajax( {
        url:'inverter/viewinverter.ws?INVId='+INVId,
        success:function(data) {
           $('#datapart').html(data);
           getReports(INVId);
          // callDataTable('table1');
           callForDay('indate');
           callForDay('indate6');
        }
     });
}
  
	
/*------------------ FOR sending trackercommand------------------------*/
$(document).ready(function() {
	var args = window.location.search;
	
	 $("#st-lat").on( 'click' , function(e)	{
//		 e.preventDefault();
		 var x = document.getElementById("lat").value;
		 var traid = document.getElementById("traId").value;
		 var trid = traid.substring(2);
		 var siteid = 5022;
		 sendCommand('rdevCmd '+siteid+' '+trid+'LA'+x);
	 });
	
	$("#st-lon").on( 'click' , function(e)	{
//		 e.preventDefault();
		 var x = document.getElementById("lon").value;
		 var traid = document.getElementById("traId").value;
		 var trid = traid.substring(2);
		 var siteid = 5022;
		 sendCommand('rdevCmd '+siteid+' '+trid+'LO'+x);
	 });
	
	});

function sendCommand(command){
//	alert("send"+command);
	$.ajax({
		url:'socket/getsocket.ws?command='+command,
		/*data:{command:command}*/
	}).done(
		function(data){
		}		
   );	
}






