var MAP_STYLES = [
    {
        "featureType": "administrative",
        "elementType": "labels.text.fill",
        "stylers": [{ "color": "#6195A0" }]
    },
    {
        "featureType": "landscape",
        "elementType": "all",
        "stylers": [{ "color": "#F2F2F2" }]
    },
    {
        "featureType": "landscape",
        "elementType": "geometry.fill",
        "stylers": [{ "color": "#FFFFFF" }]
    },
    {
        "featureType": "poi",
        "elementType": "all",
        "stylers": [{ "visibility": "off" }]
    },
    {
        "featureType": "poi.park",
        "elementType": "geometry.fill",
        "stylers": [{ "color": "#E6F3D6" },
                    { "visibility": "on" },
                    { "lightness": 35 }]
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
        "stylers": [{ "color": "#F4D2C5" },
                    { "visibility": "simplified" },
                    { "lightness": 40 }]
    },
    {
        "featureType": "road.highway",
        "elementType": "labels.text",
        "stylers": [{ "color": "#4E4E4E"  }]
    },
    {
        "featureType": "road.arterial",
        "elementType": "geometry.fill",
        "stylers": [{ "color": "#F4F4F4" }]
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
        "stylers": [{ "color": "#EAF6F8" },
                    { "visibility": "on" }]
    },
    {
        "featureType": "water",
        "elementType": "geometry.fill",
        "stylers": [{ "color": "#EAF6F8" }]
    }
]

var MAP_ICON_ORANGE = {
    path:"M256,0C114.561,0,0,114.623,0,256c0,57.431,18.909,110.456,50.854,153.167l164.208,284.421   c0.953,1.835,1.906,3.661,3.076,5.337l0.364,0.63l0.097-0.054c8.391,11.596,21.888,19.157,37.539,19.157   c14.117,0,26.439-6.427,34.896-16.329l0.435,0.239l1.622-2.811c2.394-3.235,4.521-6.675,6.055-10.486l160.871-278.659   C492.621,367.645,512,314.096,512,256C512,114.623,397.439,0,256,0z M253.469,385.782c-69.691,0-126.134-56.474-126.134-126.135   c0-69.651,56.442-126.134,126.134-126.134s126.134,56.482,126.134,126.134S323.16,385.782,253.469,385.782z",
    fillColor: '#EDA785',
    fillOpacity: 1,
    strokeWeight: 1,
    strokeColor: "#EDA785",
    scale: 0.035
};
