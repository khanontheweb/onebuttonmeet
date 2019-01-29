var map, infoWindow, pos;
function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        zoom: 18,
        center: {lat: -34.397, lng: 150.644},
        mapTypeControl: false,
        streetViewControl: false
    });
    infoWindow = new google.maps.InfoWindow;
    if(navigator.geolocation) {

        navigator.geolocation.getCurrentPosition(function(position) {
            pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };
            console.log(pos);
            var marker = new google.maps.Marker({
                position: pos,
                map: map
            });
            infoWindow.setPosition(pos);
            //infoWindow.setContent('You are here!');
            //infoWindow.open(map);
            map.setCenter(pos);
        }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
        });
    }

    else {
        handleLocationError(false, infoWindow, map.getCenter());
    }
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
                           'Error: Geolocation failed.' :
                            'Erro: Browser does not support geolocation.');
    infoWindow.open(map);
}

