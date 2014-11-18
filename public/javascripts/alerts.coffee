saveButtonListener = ->
  $( '#save-action' ).on 'click', ( event ) ->
    event.preventDefault()
    $( 'nav' ).append( '<div class="alert alert-success" role="alert">Saved!</div>' )
    $( '.alert-success' ).delay( 800 ).fadeOut( 600 )


$( document ).ready ->
  saveButtonListener()