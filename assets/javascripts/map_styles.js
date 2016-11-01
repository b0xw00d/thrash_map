var MAP_STYLES = [
    {
        "featureType": "administrative",
        "elementType": "labels.text.fill",
        "stylers": [{ "color": "#6195a0" }]
    },
    {
        "featureType": "landscape",
        "elementType": "all",
        "stylers": [{ "color": "#f2f2f2" }]
    },
    {
        "featureType": "landscape",
        "elementType": "geometry.fill",
        "stylers": [{ "color": "#ffffff" }]
    },
    {
        "featureType": "poi",
        "elementType": "all",
        "stylers": [{ "visibility": "off" }]
    },
    {
        "featureType": "poi.park",
        "elementType": "geometry.fill",
        "stylers": [{ "color": "#e6f3d6" },
                    { "visibility": "on" }]
    },
    {
        "featureType": "road",
        "elementType": "all",
        "stylers": [{ "saturation": -100 },
                    { "lightness": 45 },
                    { "visibility": "simplified" }]
    },
    {
        "featureType": "road.highway",
        "elementType": "all",
        "stylers": [{ "visibility": "simplified" }]
    },
    {
        "featureType": "road.highway",
        "elementType": "geometry.fill",
        "stylers": [{ "color": "#f4d2c5" },
                    { "visibility": "simplified" }]
    },
    {
        "featureType": "road.highway",
        "elementType": "labels.text",
        "stylers": [{ "color": "#4e4e4e"  }]
    },
    {
        "featureType": "road.arterial",
        "elementType": "geometry.fill",
        "stylers": [{ "color": "#f4f4f4" }]
    },
    {
        "featureType": "road.arterial",
        "elementType": "labels.text.fill",
        "stylers": [{ "color": "#787878" }]
    },
    {
        "featureType": "road.arterial",
        "elementType": "labels.icon",
        "stylers": [{ "visibility": "off" }]
    },
    {
        "featureType": "transit",
        "elementType": "all",
        "stylers": [{ "visibility": "off" }]
    },
    {
        "featureType": "water",
        "elementType": "all",
        "stylers": [{ "color": "#eaf6f8" },
                    { "visibility": "on" }]
    },
    {
        "featureType": "water",
        "elementType": "geometry.fill",
        "stylers": [{ "color": "#eaf6f8" }]
    }
]

var MAP_ICON_BLUE = {
    path:"M256,0C114.561,0,0,114.623,0,256c0,57.431,18.909,110.456,50.854,153.167l164.208,284.421   c0.953,1.835,1.906,3.661,3.076,5.337l0.364,0.63l0.097-0.054c8.391,11.596,21.888,19.157,37.539,19.157   c14.117,0,26.439-6.427,34.896-16.329l0.435,0.239l1.622-2.811c2.394-3.235,4.521-6.675,6.055-10.486l160.871-278.659   C492.621,367.645,512,314.096,512,256C512,114.623,397.439,0,256,0z M253.469,385.782c-69.691,0-126.134-56.474-126.134-126.135   c0-69.651,56.442-126.134,126.134-126.134s126.134,56.482,126.134,126.134S323.16,385.782,253.469,385.782z",
    fillColor: '#598AEA',
    fillOpacity: 0.6,
    strokeWeight: 1,
    strokeColor: "#598AEA",
    scale: 0.035
};
