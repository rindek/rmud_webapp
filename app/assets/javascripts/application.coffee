//= require jquery
//= require jquery_ujs
//= require_tree .

$ ->
  $("#player_name").blur ->
    $("#player_entry_attributes_mianownik").val $("#player_name").val()
