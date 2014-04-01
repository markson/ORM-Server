$ ->
  mapOptions = {
    center: new google.maps.LatLng(-34.397, 150.644),
    zoom: 8,
    disableDefaultUI: true,
    draggable: false,
    zoomControl: false,
    scrollwheel: false,
    disableDoubleClickZoom: true
  }
  window.map = new google.maps.Map($('#map-view')[0], mapOptions)
  $('.fix-width ').each ->
    width = 20
    $(this).find('ul li').each ->
        width += $(this).outerWidth(true)
    $(this).find('ul').width(width)

