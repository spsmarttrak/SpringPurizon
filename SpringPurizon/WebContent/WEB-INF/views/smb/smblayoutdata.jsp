<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<!--flaty css styles-->
 <link rel="stylesheet" href="css/base.css">
<html>
 <style>

.float {
	position: fixed; 
	top: 50%;
	right:0%;
</style>
<body>
	 <div class="col-md-12 col-sm-12 st-module" style="height:700px; width:1000px; left:90px;">
		<div class="wrapper" style="background-image:url(img/plant/scblayout.png); height:700px; border:1px solid black;">
			
		
 					<div id="SMBB08" style=" margin-left: 723px;margin-top: 63px;color:black;"><span class="st-dashins" style="width:90px;height:60px;background-color:#82E0AA;">${layoutdata['SMB08']}</span></div>
 				    <button class="trk1" type="button" onclick="javascript:viewSmb('SMB08')"  style=" left:712px; top:65px;">F1</button>
					<div id="SMBB12" style=" margin-left: 93px;margin-top: 98px; color:black;"><span class="st-dashins" style="width:60px;height:60px;background-color:#82E0AA;">${layoutdata['SMB12']}</span></div>
					<button class="trk1"  type="button" onclick="javascript:viewSmb('SMB12')"  style=" left:82px; top:181px;">E1</button>  
					<div id="SMBB11" style=" margin-left:276px;margin-top: 6px; color:black;"><span class="st-dashins" style="width:60px;height:60px;background-color:#82E0AA;">${layoutdata['SMB11']}</span></div>
					<button class="trk2" type="button" onclick="javascript:viewSmb('SMB11')"  style=" left:265px; top:205px;">E2</button>
		 			<div id="SMBB10" style=" margin-left: 426px;margin-top: 23px; color:black;"><span class="st-dashins" style="width:60px;height:60px;background-color:#82E0AA;">${layoutdata['SMB10']}</span></div>
		 			<button class="trk1" type="button" onclick="javascript:viewSmb('SMB10')"  style=" left:415px; top:222px;">E3</button>
					<div id="SMBB09" style=" margin-left: 522px;margin-top: -1px; color:black;"><span class="st-dashins" style="width:60px;height:60px;background-color:#82E0AA;">${layoutdata['SMB09']}</span></div>
					<button class="trk1" type="button" onclick="javascript:viewSmb('SMB09')"  style=" left:512px; top:239px;" >E4</button>
					<div id="SMBB07" style=" margin-left: 740px;margin-top:-26px; color:black;"><span class="st-dashins" style="width:60px;height:60px;background-color:#82E0AA;">${layoutdata['SMB07']}</span></div>
					<button class="trk2" type="button" onclick="javascript:viewSmb('SMB07')"  style=" left:676px; top:230px;" >E5 & G2</button>
					<div id="SMBB13" style=" margin-left: 84px;margin-top:92px; color:black;"><span class="st-dashins" style="width:60px;height:60px;background-color:#82E0AA;">${layoutdata['SMB13']}</span></div>
					<button class="trk1" type="button" onclick="javascript:viewSmb('SMB13')"  style=" left:73px; top:340px;" >D6</button>
					<div id="SMBB14" style=" margin-left:341px;margin-top:74px; color:black;"><span class="st-dashins" style="width:60px;height:60px;background-color:#82E0AA;">${layoutdata['SMB14']}</span></div>
					<button class="trk2" type="button" onclick="javascript:viewSmb('SMB13')"  style=" left:219px; top:350px;" >D5</button>
					<div id="SMBB01" style=" margin-left: 515px;margin-top:-71px; color:black;"><span class="st-dashins" style="width:60px;height:60px;background-color:#82E0AA;">${layoutdata['SMB01']}</span></div>
					<button class="trk1" type="button" onclick="javascript:viewSmb('SMB14')"  style=" left:330px; top:433px;" >D1</button>
					<div id="SMBB06" style=" margin-left: 666px;margin-top: -23px; color:black;"><span class="st-dashins" style="width:60px;height:60px;background-color:#82E0AA;">${layoutdata['SMB06']}</span></div>
					<button class="trk1" type="button" onclick="javascript:viewSmb('SMB01')"  style=" left:504px; top:380px;" > D2</button> 
					 <div id="SMBB05" style=" margin-left: 838px;margin-top: 11px; color:black;"><span class="st-dashins" style="width:60px;height:60px;background-color:#82E0AA;">${layoutdata['SMB05']}</span></div> 
					 <button class="trk1" type="button" onclick="javascript:viewSmb('SMB06')"  style=" left:655px; top:375px;" >D3</button>
				 	<div id="SMBB02" style=" margin-left: 514px;margin-top:99px; color:black;"><span class="st-dashins" style="width:60px;height:60px;background-color:#82E0AA;">${layoutdata['SMB02']}</span></div>
				 	<button class="trk1" type="button" onclick="javascript:viewSmb('SMB05')"  style=" left:827px; top:403px;" >D4</button>
					<div id="SMBB03" style=" margin-left: 664px;margin-top: -25px; color:black;"><span class="st-dashins" style="width:60px;height:60px;background-color:#82E0AA;">${layoutdata['SMB03']}</span></div>
					<button class="trk1" type="button" onclick="javascript:viewSmb('SMB02')"  style=" left:503px; top:521px;" >C1</button>
					<div id="SMBB04" style=" margin-left: 844px;margin-top: -52px; color:black;"><span class="st-dashins" style="width:60px;height:60px;background-color:#82E0AA;">${layoutdata['SMB04']}</span></div>
					<button class="trk1" type="button" onclick="javascript:viewSmb('SMB03')"  style=" left:653px; top:514px;" >C2</button>
					<div id="SMBB15" style=" margin-left: 350px;margin-top:102px; color:black;"><span class="st-dashins" style="width:60px;height:60px;background-color:#82E0AA;">${layoutdata['SMB15']}</span></div>
					<button class="trk1" type="button" onclick="javascript:viewSmb('SMB04')"  style=" left:833px; top:480px;" >C3</button>
					<button class="trk1" type="button" onclick="javascript:viewSmb('SMB15')"  style=" left:339px; top:600px;" >B1</button>
					<button class="trk2" type="button" onclick="window.location.href='inverter.jsp?name=5022&invid=INV01'"  style=" left:615px; top:606px;" >Inverter1</button>
					<button class="trk2" type="button" onclick="window.location.href='inverter.jsp?name=5022&invid=INV02'"  style=" left:615px; top:626px;" >Inverter2</button>
	
</div>
	</div>
</body>
</html>