describe 'provides random problem', ->
  describe 'provide', ->
    Given -> @subject = requireSubject "lib/provides-random-problem"
    When -> @result = @subject.provide()
    Then -> @result.operator == "+"
    Then -> @result.operands.left == 4
    Then -> @result.operands.right == 5
