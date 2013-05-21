check_for_nested_fields_for_proposal = ->
  if $('#proposal').length > 0
    $('#add_proposal').hide()
  else
    $('#add_proposal').show()
$('#proposals').bind 'cocoon:after-insert', ->
  check_for_nested_fields_for_proposal()

$('#proposals').bind 'cocoon:after-remove', ->
  check_for_nested_fields_for_proposal()

check_for_nested_fields_for_proposal()

check_for_nested_fields_for_members = ->
  number_of_participants = $('#project_number_of_participants').val()
  if $('#member').length >= number_of_participants - 1
    $('#add_member').hide()
  else
    $('#add_member').show()
$('#members').bind 'cocoon:after-insert', ->
  check_for_nested_fields_for_members()

$('#members').bind 'cocoon:after-remove', ->
  check_for_nested_fields_for_members()

check_for_nested_fields_for_members()

