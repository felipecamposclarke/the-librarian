#= require jquery
#= require jquery_ujs
#= require twitter/bootstrap
#= require turbolinks
#= require select2
#= require select2_locale_es
#= require_tree .


$(document).ready ->
  $("select[multiple='multiple']").select2()
