# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

updateContentCountdown = ->
  remaining = 300 - jQuery("#rumor_content").val().length
  jQuery(".ContentCountdown").text remaining + " characters remaining"

jQuery ->
  updateContentCountdown()
  $("#rumor_content").change updateContentCountdown
  $("#rumor_content").keyup updateContentCountdown