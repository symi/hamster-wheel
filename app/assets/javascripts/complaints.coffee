jQuery ->
  window.initMap = ->
     if $('#map').size() > 0
      map = new google.maps.Map(document.getElementById('map-canvas'), {
            center: {lat: $('p.latitude').text(), lng: $('p.longitude').text()},
            zoom: 8});
