function initMap() {
    var mapCanvas  = $("#map");
    var skatespots = mapCanvas.data("skatespots");
    var mapCenter  = new google.maps.LatLng(41.9499835, -87.7807218);
    var map        = buildMap(11, mapCenter, MAP_STYLES);

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

var dropMarkers = function(skatespots, map) {
    for(i=0; i < skatespots.length; i++) {
        var latLng = new google.maps.LatLng(parseFloat(skatespots[i].latitude),
        parseFloat(skatespots[i].longitude));

        var marker = buildMarker(latLng, map, MAP_ICON_BLUE)
    }
}
