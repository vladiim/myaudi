questionFormListener = ->
  $( 'submit#service-question' ).on 'click', ( event ) ->
    event.preventDefault()
    $target = $( event.target )
    $form = $target.parent()
    message = $form.find( 'textarea' ).val()
    $form.toggleClass( 'hidden' )
    # $( '#question-form-thanks' ).toggleClass( 'hidden' ).fadeIn('slow')
    # $( '#question-form-thanks' ).fadeIn(5000)
    $( '#question-form-thanks' ).toggleClass( 'hidden' )
    $( '#show-question' ).toggleClass( 'hidden' )
    $( '#show-question' ).text( message )

$( document ).ready ->
  questionFormListener()