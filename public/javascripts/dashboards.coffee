dashboardListener = ->
  $( '.metric' ).on 'click', ( event ) ->
    $target = $( event.target )
    url = $target.data( 'url' )
    window.location.href = url

$( document ).ready ->
  dashboardListener()