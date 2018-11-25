# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

updateWholesalePrice

updateWholesalePrice = ->
  selection_id
  console.log 'Got it'
  selection_id = $('#car_wholesale_id').val()
  $.getJSON '/cars/' + selection_id + '/wholesale_price', {}, (json, response) ->
    $('#wholesale_price').text json['wholesaleprice']

$(document).on 'turbolinks:load', ->
  console.log 'cars loading'
  if $('#car_wholesale_id').length
    updateWholesalePrice
  $('#car_wholesale_id').on 'change', updateWholesalePrice
  return