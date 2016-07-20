$(document).on("ready",function(){

$("#submit").on('click', function(){
            // send ajax
            $.ajax({
                url: '/avi', // url where to submit the request
                type : "POST", // type of action POST || GET
                dataType : 'json', // data type
                data : $("#form").serialize(), // post data || get data
                success : function(result) {
                    // you can see the result from the console
                    // tab of the developer tools
                    console.log(result);
                },
                error: function(xhr, resp, text) {
                    console.log(xhr, resp, text);
                }
            })
        });

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
        });

          marker.addListener("click", function(e){
          console.log(e);
          infoWindow.open(map, marker);
        })         

        var infoWindow = new google.maps.InfoWindow({
          content:"Hi"
        })

        
     }
    });
   }
initMap();
        
});



