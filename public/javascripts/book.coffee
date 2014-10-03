$( document ).ready( ->

  $( '.responsive-calendar' ).responsiveCalendar
    time: '2014-10'
    events:
      '2014-10-31':
        'number': 5
        'url': 'http://w3widgets.com/responsive-slider'

)