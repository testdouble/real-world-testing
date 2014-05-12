describe 'Todo App', ->
  Given -> @$newTodoForm = affix('form#new-todo-form').hide()

  describe 'handling new todo click event', ->
    Given -> @$newTodoButton = affix('#new-todo')
    Given -> @event = jQuery.Event('click')
    Given -> spyOn(@event, 'preventDefault')

    When -> @$newTodoButton.trigger(@event)
    Then -> expect(@event.preventDefault).toHaveBeenCalled()
    And -> @$newTodoForm.is(':visible')

  describe 'form submission and posting to the server', ->
    Given -> @$newTodoForm.show()
    Given -> @$description = @$newTodoForm.affix('input[name="description"]').val("Mow lawn")
    Given -> @$done = @$newTodoForm.affix('input[name="done"][type="checkbox"]').prop('checked', true)

    Given -> @event = jQuery.Event('submit')
    Given -> spyOn(@event, 'preventDefault').andCallThrough()

    Given -> spyOn($, 'post')
    Given -> @postSuccess = jasmine.captor()
    When -> @$newTodoForm.trigger(@event)
    And -> expect($.post).toHaveBeenCalledWith '/todos',
      description: "Mow lawn",
      done: true
    , @postSuccess.capture()
    Then -> expect(@event.preventDefault).toHaveBeenCalled()

    describe "AJAX success callback", ->
      Given -> @response =
        description: "Some todo"
        done: false
      Given -> @$tbody = affix('table#todos tbody')

      When -> @postSuccess.value(@response)
      Then -> expect(@$tbody.find('td:first').text()).toEqual(@response.description)
      And -> @$description.val() == ""
      And -> @$done.prop('checked') == false
      And -> @$newTodoForm.is(":hidden")

      context "is done", ->
        Given -> @response.done = true
        Then -> @$tbody.find('td:last input').prop('checked') == true

      context "is not done", ->
        Given -> @response.done = false
        Then -> @$tbody.find('td:last input').prop('checked') == false






















  #
