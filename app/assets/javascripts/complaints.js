$(function () {
    window.initMap = function () {
      if ($('#map').size() > 0) {
        var map = new google.maps.Map(document.getElementById('map-canvas'),
          {
              center: {
                lat: $('p.latitude').text(),
                lng: $('p.longitude').text()
              },
              zoom: 8
          });
          map.addListener('click', function(e) {
            placeMarkerAndPanTo(e.latLng, map);
            });
      }
    };
  });
function placeMarkerAndPanTo(latLng, map) {
  var marker = new google.maps.Marker({
    position: latLng,
    map: map
  });
  map.panTo(latLng);
}
