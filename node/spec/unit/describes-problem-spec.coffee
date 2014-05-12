describe 'describes-problem', ->
  describe 'describe', ->
    Given -> @subject = requireSubject('lib/describes-problem')
    When -> @result = @subject.describe(
      operator: '+',
      operands:
        left: 4,
        right: 5
    )
    Then -> @result.operands.left == 4
    Then -> @result.description != undefined
    Then -> @result.description == '4 + 5'
