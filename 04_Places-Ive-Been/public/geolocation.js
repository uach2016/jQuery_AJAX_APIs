var map;
var locations = [];

if ("geolocation" in navigator){
  navigator.geolocation.getCurrentPosition(onLocation, onError);
}

function onLocation(position){
  var myPosition = {
    lat: position.coords.latitude,
    lng: position.coords.longitude
  };

  createMap(myPosition);
  storeLocations(myPosition);
  setupAutocomplete();
  takeLocations();
}

function onError(err){
  console.log("What are you using, IE 7??", err);
}


function createMap(position){
  var mapOptions = {
    center: position,
    zoom: 17
  };
  map = new google.maps.Map($('#map')[0], mapOptions);
  createMarker(position);
}


function createMarker(position) {
  var marker = new google.maps.Marker({
   position: position,
   map: map
 });

}

function setupAutocomplete(){
  var input = $('#get-places')[0];
  var autocomplete = new google.maps.places.Autocomplete(input);

  autocomplete.addListener('place_changed', function(){
    var place = autocomplete.getPlace();
    if (place.geometry.location) {
      map.setCenter(place.geometry.location);
      map.setZoom(17);
      createMarker(place.geometry.location);
      storeLocations(place.geometry.location);
    } else {
      alert("The place has no location...?")
    }
  });
}

  function storeLocations(avenue){
    locations.push(avenue);
    window.localStorage.setItem('locations', JSON.stringify(locations));
};

  function takeLocations(){
    var storedLocations = JSON.parse(window.localStorage.getItem("locations"));
    storedLocations.forEach(function(location, index, array){
      createMarker(location);
    });
};
