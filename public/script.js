$(document).on("ready",function(){

function initMap() {
     var myLatLng = {lat: 38.829332, lng: -106.139515};

     // Create a map object and specify the DOM element for display.
     var map = new google.maps.Map(document.getElementById('map'), {
       center: myLatLng,
       scrollwheel: false,
       zoom: 10
     });

     $.get('/avi', function(avalanches){
      for (var i = 0; i<avalanches.length; i++){
       var marker = new google.maps.Marker({
       map: map,
       position: {lat: avalanches[i].langitude, lng: avalanches[i].longitude} 
     })
     }
      infowindow = new google.maps.infowindow({
        content:formatInfoWindow(avalanches)
      });
      marker.addListener("click", function(){
      infowindow.open(map, marker);
     })
     });
   }
initMap();
        
});



