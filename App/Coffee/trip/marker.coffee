$ ->
  $(".marker-row").on "click", ->
    clearMarker()
    $(this).find('li').each ->
      latLng = new google.maps.LatLng(Number($(this).data('lat')), Number($(this).data('lng')))
      addMarker(latLng)
      extendBound(latLng)

markers = []

extendBound = ->
  bounds = new google.maps.LatLngBounds()
  bounds.extend marker.getPosition() for marker in markers
  map.fitBounds(bounds)

addMarker = (latLng)->
  marker = new google.maps.Marker({
    position: latLng
    map: map,
    title: $(this).text(),
    animation: google.maps.Animation.DROP
  })
  markers.push(marker)

setAllMap = (map)->
  marker.setMap(map) for marker in markers

clearMarker = ->
  setAllMap(null)


