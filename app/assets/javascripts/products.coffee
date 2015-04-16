#Place all the behaviors and hooks related to the matching controller here.
#All this logic will automatically be available in application.js.
#You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $("#product_weight").on "keyup", ->
    val=$(this).val()
    console.log val
    val=val.replace /\D/g, ""
    $(this).val val
$ ->
  ready()
$(document).on "page:load",ready

