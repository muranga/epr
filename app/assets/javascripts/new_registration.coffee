jQuery ->
  $('#user_user_type').on 'change', ->
    chosen = $(this).val()
    if chosen == "Student"
      $('#for_student').show()
    else if chosen == "Public"
      $('#for_student').hide()
    return
  .change()
  return