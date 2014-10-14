tripListListener = ->
  $('.trip-item').on 'click', ( event ) ->
    window.location.replace '/trips/redfern-to-north-sydney'

$( document ).ready ->
  tripListListener()