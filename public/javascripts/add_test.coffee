html = """
  <div class='row'>
    <div class='col-xs-3'>
      <input type='text' value='50%'>
    </div>
    <div class='col-xs-9'>
      <a class='btn btn-default btn-100'>
        Next test
      </a>
    </div>
  <div>
"""

addTestListener = ->
  $( '.btn-add-test' ).on 'click', ( event ) ->
    event.preventDefault()
    $add_row = $( '.add_test' )
    $add_row.before( html )

$( document ).ready ->
  addTestListener()
