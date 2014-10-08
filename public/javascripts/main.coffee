formListener = ->
  $( 'input' ).on 'focus', ( event ) ->
    $target = $( event.target )
    $target.parent().addClass( 'has-error' )
    window.onkeyup = ( event ) ->
      $target.parent().removeClass( 'has-error' )
      $target.parent().addClass( 'has-success' )

$( document ).ready( ->
  formListener()
)