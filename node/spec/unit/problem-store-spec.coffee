describe 'saves-problem', ->
  describe 'save', ->
    Given -> @subject = requireSubject('lib/saves-problem')
    When -> @result = @subject.save(foo: 'bar')
    Then -> @result.foo == 'bar'
    Then -> @result.id != undefined
