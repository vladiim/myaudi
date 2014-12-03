searchListener = ->
  $( '.nav-search' ).on 'click', ( event ) ->
    event.preventDefault()
    $( '.nav-search-form' ).toggleClass( 'hidden' )
    $( '.nav-standard' ).toggleClass( 'hidden' )

searchInputListener = ->
  $( '#nav-search-input' ).on 'focus', ->
    $( '.nav-search-results' ).removeClass( 'hidden' )

$( document ).ready ->
  searchListener()
  searchInputListener()