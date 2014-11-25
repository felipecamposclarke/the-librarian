#= require jquery
#= require jquery_ujs
#= require twitter/bootstrap
#= require turbolinks
#= require select2
#= require select2_locale_es
#= require_tree .


ready = ->
  $("select[multiple='multiple']").select2()

$(document).ready(ready)
$(document).on('page:load', ready)
