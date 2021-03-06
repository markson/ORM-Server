// Generated by CoffeeScript 2.0.0-beta8
$(function () {
  var mapOptions;
  mapOptions = {
    center: new google.maps.LatLng(-34.397, 150.644),
    zoom: 8,
    disableDefaultUI: true,
    draggable: false,
    zoomControl: false,
    scrollwheel: false,
    disableDoubleClickZoom: true
  };
  window.map = new google.maps.Map($('#map-view')[0], mapOptions);
  return $('.fix-width ').each(function () {
    var width;
    width = 20;
    $(this).find('ul li').each(function () {
      return width += $(this).outerWidth(true);
    });
    return $(this).find('ul').width(width);
  });
});
