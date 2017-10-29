$(function () {
    window.initMap = function () {
      if ($('#map').size() > 0) {
        var map = new google.maps.Map(document.getElementById('map-canvas'),
          {
              center: {
                lat: $('p.latitude').text(),
                lng: $('p.longitude').text()
              },
              zoom: 1
          });
          map.addEventListener('contextmenu', function(e) {
            console.log("CLICKED")
            map.addMarker({
              lat: e.latLng.lat,
              lng: e.latLng.lng,
        });
      });
    };
  };
});
window.onload = function() {

  // Normalize the various vendor prefixed versions of getUserMedia.
  navigator.getUserMedia = (navigator.getUserMedia ||
                            navigator.webkitGetUserMedia ||
                            navigator.mozGetUserMedia ||
                            navigator.msGetUserMedia);

};
