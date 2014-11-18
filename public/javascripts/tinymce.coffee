tinymce.initOptions = ->
  tinymce.init
    selector: 'textarea'
    menubar: false
    plugins: ['link image table hr']
    toolbar1: 'bold italic underline | alignleft aligncenter alignright'
    toolbar2: 'bullist numlist | link unlink anchor image media'
    toolbar3: 'table | hr | blockquote | undo redo'

$(document).ready ->
  if $( '#richText' )
    tinymce.initOptions()