TIME_FORM = '#time-form'
DETAILS_FORM = '#details-form'
EVENTS = { '2014-10-31': { 'number': 5 }, '2014-10-20': { 'number': 3 }, '2014-10-15': { 'number': 9 } }

responsiveCal = ->
  $( '.responsive-calendar' ).responsiveCalendar
    time: '2014-10'
    events: EVENTS

dayListener = ->
  $( '.day' ).on 'click', ( event ) ->
    event.preventDefault()
    $target = $( event.target )
    day = $target.data('day')
    month = $target.data('month')
    year = $target.data('year')
    $( '#full-date' ).text( "#{ day }-#{ month }-#{ year }" )
    toggleModal( TIME_FORM )

closeModalListener = ->
  $( ".close-modal" ).on "click", (event) ->
    event.preventDefault()
    target = $(event.target)
    toggleModal( TIME_FORM )

timeListener = ->
  $( '.hour' ).on 'click', ( event ) ->
    event.preventDefault()
    hideMinute()
  $( '.minute' ).on 'click', ( event ) ->
    event.preventDefault()
    hideHour()

hideMinute = -> $( '.minute' ).popover( 'hide' )
hideHour = -> $( '.hour' ).popover( 'hide' )

timeListbuilder = (times) ->
  listArray = _.collect times, ( time ) -> "<li class='time-input' data-value='#{ time }'><a class='time-link' href='#'>#{ time } <span class='badge'>2</a></a></li>"
  listArray.join('')

popoverListener = ( times, type ) ->
  $( ".#{ type }" ).popover
    'title': "Select booking #{ type }"
    'html': 'true'
    'placement': 'bottom'
    'content': "<ul> #{ timeListbuilder(times) } </ul>"

minutePopoverListener = ->
  minutes = _.range 0, 60, 15
  popoverListener( minutes, 'minute' )
  timeInputListener()

hourPopoverListener = ->
  hours = _.range 9, 18
  popoverListener( hours, 'hour' )
  timeInputListener()

timeInputListener = ->
  $( '.time-link' ).on 'click', ( event ) ->
    alert('click!')
    event.preventDefault()
    $target = $( event.target )

detailsCTAListener = ->
  $( '.details' ).on 'click', ( event ) ->
    event.preventDefault()
    $target = $( event.target )
    toggleModal( DETAILS_FORM )

finaliseBookingListener = ->
  $( '.finalise-booking' ).on 'click', ( event ) ->
    event.preventDefault()
    $target = $( event.target )
    $( "#finalise-booking" ).toggleClass( 'hidden' )

toggleModal = ( id ) -> $( id ).toggleClass('hidden')

$( document ).ready ->
  responsiveCal()
  window.setTimeout(dayListener, 1000)
  closeModalListener()
  hourPopoverListener()
  minutePopoverListener()
  timeListener()
  detailsCTAListener()
  finaliseBookingListener()
