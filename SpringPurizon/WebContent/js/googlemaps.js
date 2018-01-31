var styles = [[{
        url: '../images/people35.png',
        height: 35,
        width: 35,
        anchor: [16, 0],
        textColor: '#ff00ff',
        textSize: 10
      }, {
        url: '../images/people45.png',
        height: 45,
        width: 45,
        anchor: [24, 0],
        textColor: '#ff0000',
        textSize: 11
      }, {
        url: '../images/people55.png',
        height: 55,
        width: 55,
        anchor: [32, 0],
        textColor: '#ffffff',
        textSize: 12
      }], [{
        url: '../images/conv30.png',
        height: 27,
        width: 30,
        anchor: [3, 0],
        textColor: '#ff00ff',
        textSize: 10
      }, {
        url: '../images/conv40.png',
        height: 36,
        width: 40,
        anchor: [6, 0],
        textColor: '#ff0000',
        textSize: 11
      }, {
        url: '../images/conv50.png',
        width: 50,
        height: 45,
        anchor: [8, 0],
        textSize: 12
      }], [{
        url: '../images/heart30.png',
        height: 26,
        width: 30,
        anchor: [4, 0],
        textColor: '#ff00ff',
        textSize: 10
      }, {
        url: '../images/heart40.png',
        height: 35,
        width: 40,
        anchor: [8, 0],
        textColor: '#ff0000',
        textSize: 11
      }, {
        url: '../images/heart50.png',
        width: 50,
        height: 44,
        anchor: [12, 0],
        textSize: 12
      }], [{
        url: '../images/pin.png',
        height: 48,
        width: 30,
        anchor: [-18, 0],
        textColor: '#ffffff',
        textSize: 10,
        iconAnchor: [15, 48]
      }]];

      var markerClusterer = null;
      var map = null;
      var imageUrl = 'http://chart.apis.google.com/chart?cht=mm&chs=24x32&' +
          'chco=FFFFFF,008CFF,000000&ext=.png';
      var titles=new Array();
      
      function refreshMap(json) {
        if (markerClusterer) {
          markerClusterer.clearMarkers();
        }

        var markers = [];

        var markerImage = new google.maps.MarkerImage(imageUrl,
          new google.maps.Size(24, 32));

        for (var i = 0; i < json.length; ++i) {
        	 var data = json[i];
        	 titles.push(data.title);
        	 var mytext = "Title :"+data.title+" <br> Meter No: " + data.meter +  "<br> Comm On: " + data.lastcommdate
		      +" <br>Meter Reading :"+data.reading;
		    	  var myinfowindow = new google.maps.InfoWindow({
		    	      content: mytext
		    	  }); 
          var latLng = new google.maps.LatLng(data.lat,data.lng)
          var marker = new google.maps.Marker({
            position: latLng,
            //draggable: true,
            //icon: markerImage,
            icon:data.icon,
            optimized:false,
            infowindow: myinfowindow,
            animation: google.maps.Animation.DROP
          });
          google.maps.event.addListener(marker, 'mouseover', function() {
  	        this.infowindow.open(map, this);
  	  });
          google.maps.event.addListener(marker, 'mouseout', function() {
  	        this.infowindow.close(map, this);
  	  });
          markers.push(marker);
        }

        var zoom = parseInt(-1, 10);
        var size = parseInt(-1, 10);
        var style = parseInt(-1, 10);
        zoom = zoom === -1 ? null : zoom;
        size = size === -1 ? null : size;
        style = style === -1 ? null: style;

        markerClusterer = new MarkerClusterer(map, markers, {
          maxZoom: zoom,
          gridSize: size,
          styles: styles[style],
          imagePath: 'assets/gmaps/images/m'
        });
        
  //-----------------block for search option--------------------------------------------
        
       
        	
      }

      function initialize() {
    	 
        map = new google.maps.Map(document.getElementById('gmap-markers'), {
          zoom: 10,
          center: new google.maps.LatLng(17.4398539, 78.3898997),
          mapTypeId: google.maps.MapTypeId.ROADMAP
        });

       
      }

      function clearClusters() {
      
        markerClusterer.clearMarkers();
      }
      
      
      //google.maps.event.addDomListener(window, 'load', initialize);
      
      function searchContent(json){
    	 
    	  $('#pac-input').typeahead('destroy');
          $('#pac-input').val("");   	  
    	  $('#pac-input').typeahead({source: titles,
    		  onSelect:displayResult
    	  });
    	 function displayResult(item) {
//    		 markerClusterer.clearMarkers();
	                for (var i = 0; i < json.length; i++) {
	                	
	                	 var data1 = json[i];	                	 
	                        if (item.text== data1.title) {
	//-------------------------------adding this marker only to map-------------------------------------------------
	                var markers = [];
	                var infoWindow2 = new google.maps.InfoWindow();
	                var latLng = new google.maps.LatLng(data1.lat,data1.lng);
	                var s_nm = data1.title;
	                var img=data1.icon;
	
	                var marker_1 = new google.maps.Marker({
	                    position: latLng,
	                    icon: img,
	                    title: s_nm
	                   
	                });
//	                (function(marker_1, data, s_nm) {            
//	                    google.maps.event.addListener(marker_1, "click", function(e) {
//	                        
//	                    });
//	                    google.maps.event.addListener(marker_1, "mouseover", function(e) {
//	                        infoWindow2.setContent(marker_1.title);
//	                        infoWindow2.open(map, marker_1);
//	                    });
//	                    google.maps.event.addListener(marker_1, "mouseout", function(e) {
//	                        infoWindow2.close();
//	                    });
//	                })(marker_1, data);
	                markers.push(marker_1);
//	    var zoom = parseInt(document.getElementById('zoom').value, 10);
//	    var size = parseInt(document.getElementById('size').value, 10);
//	    var style = parseInt(document.getElementById('style').value, 10);
//	    zoom = zoom == -1 ? null : zoom;
//	    size = size == -1 ? null : size;
//	    style = style == -1 ? null : style;
	    var infoWindow3 = new google.maps.InfoWindow();
	    markerClusterer = new MarkerClusterer(map, markers);
//	    var fn = markerClickFunction(markers, infoWindow3, markerClusterer.gridSize);
	//-----------------------end of adding marker-----------------------                
	                                map.panTo(new google.maps.LatLng(data1.lat,data1.lng));
	                                map.setZoom(14);
	                        }
	                }
	                titles=new Array();
	        };
    	      
    	}      