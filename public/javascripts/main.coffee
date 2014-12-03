formListener = ->
  $( 'input' ).on 'focus', ( event ) ->
    $target = $( event.target )
    $target.parent().addClass( 'has-error' )
    window.onkeyup = ( event ) ->
      $target.parent().removeClass( 'has-error' )
      $target.parent().addClass( 'has-success' )

substringMatcher = (strs) ->
  findMatches = (q, cb) ->
    matches = []
    substrRegex = new RegExp(q, "i")
    $.each strs, (i, str) ->
      matches.push value: str if substrRegex.test( str )
      return
    cb matches
    return

initTypeAhead = ->
  staff = ['Joshua Wood' ,'Evangelia Kirpichnikov', 'Samuel Teh', 'Andrew Mara', 'Josh Boyden', 'Kevin Goult', 'Nathan Johnson', 'Rolee Satyam', 'Merran Morton', 'Mike Hill', 'Justine Marino', 'Kevin Trinh', 'Trent Ellis']

  $( '.staff-search' ).typeahead
    hint: true
    highlight: true
    minLength: 1
  ,
    name: 'staff'
    displayKey: 'value'
    source: substringMatcher( staff )

initCheckbox = ->
  $( '.checkbox-notifications' ).checkbox()

interestListener = ->
  $( '.interest-item' ).on 'click', ( event ) ->
    $target = $( event.target )
    $target.toggleClass( 'active' )

$( document ).ready ->
  formListener()
  initTypeAhead()
  initCheckbox()
  interestListener()