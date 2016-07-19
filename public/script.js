$(document).on("ready",function(){

function initMap() {
     var myLatLng = {lat: 38.829332, lng: -106.139515};

     // Create a map object and specify the DOM element for display.
     var map = new google.maps.Map(document.getElementById('map'), {
       center: myLatLng,
       scrollwheel: false,
       zoom: 10
     });

     // Create a marker and set its position.
     var marker = new google.maps.Marker({
       map: map,
       position: myLatLng,
       title: 'Buena Vista'
     });
   }
initMap();
        
});

