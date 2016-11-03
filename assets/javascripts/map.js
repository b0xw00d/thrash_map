function initMap() {
    var skatespots = $("#map").data("skatespots");
    var mapCenter  = new google.maps.LatLng(41.9026168, -87.6861295);
    var map        = buildMap(12, mapCenter, MAP_STYLES);

    dropMarkers(skatespots, map);
}

var buildMap = function(zoom, center, styles) {
    return new google.maps.Map(document.getElementById('map'), {
        zoom: zoom,
        center: center,
        styles: styles
    });
}

var buildMarker = function(position, map, icon) {
    return new google.maps.Marker({
        position: position,
        map: map,
        animation: google.maps.Animation.DROP,
        icon: icon
    });
}

var buildInfoWindow = function(skatespot, map, marker) {
    var content = '<h3 class="info-title">' + skatespot.title + '</h3>' +
                  '<p>' + skatespot.address +
                      '</br>' + skatespot.city + ', ' + skatespot.state +
                      '</br>' + skatespot.zip +
                  '</p>'

    var spotInfo = new google.maps.InfoWindow();
    spotInfo.setContent(content);

    marker.addListener('click', function() {
        spotInfo.open(map, marker);
    });
}

var dropMarkers = function(skatespots, map) {
    for(var i = 0; i < skatespots.length; i++) {
        var lat    = parseFloat(skatespots[i].latitude);
        var long   = parseFloat(skatespots[i].longitude);
        var latLng = new google.maps.LatLng(lat, long);

        var marker = buildMarker(latLng, map, MAP_ICON_ORANGE);

        buildInfoWindow(skatespots[i], map, marker);
    }
}
