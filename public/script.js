$(document).on("ready",function(){

function initMap() {
     var myLatLng = {lat: 38.829332, lng: -106.139515};

     // Create a map object and specify the DOM element for display.
     var map = new google.maps.Map(document.getElementById('map'), {
       center: myLatLng,
       scrollwheel: false,
       zoom: 10
     });

      

      $.get('/avi_back_end', function(avalanches){
      console.log(avalanches);
      for (let i = 0; i<avalanches.length; i++){

          let marker = new google.maps.Marker({
          map: map,
          position: {lat: avalanches[i].langitude, lng: avalanches[i].longitude} 
        });

          marker.addListener("click", function(e){
          console.log(e);
                  
      var contentString = '<a href= "/avi/' + avalanches[i].id + '">'+ avalanches[i].region + '</a>';
                  var infoWindow = new google.maps.InfoWindow({
          content: contentString
          // + ' ' + contentString
        })

          infoWindow.open(map, marker);
        
        })         

        
     }
    });
   }
initMap();
        
});



