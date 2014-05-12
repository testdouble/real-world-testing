describe 'Calculator', ->
  Given -> @subject = new Calculator()

  describe '#add', ->
    Then -> @subject.add(1,2) == 3

  describe '#subtract', ->
    Then -> @subject.subtract(3,2) == 1
