// Generated by CoffeeScript 1.8.0
var tripListListener;

tripListListener = function() {
  return $('.trip-item').on('click', function(event) {
    return window.location.replace('/trips/redfern-to-north-sydney');
  });
};

$(document).ready(function() {
  return tripListListener();
});
