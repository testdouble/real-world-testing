describe 'ConvertsNumerals', ->
  Given -> @subject = new ConvertsNumerals()

  describe '#fromRoman', ->
    Then -> @subject.fromRoman("I") == 1
    Then -> @subject.fromRoman("II") == 2
    Then -> @subject.fromRoman("III") == 3
    Then -> @subject.fromRoman("IV") == 4
    Then -> @subject.fromRoman("V") == 5
    Then -> @subject.fromRoman("VI") == 6
    Then -> @subject.fromRoman("VII") == 7
    Then -> @subject.fromRoman("VIII") == 8
    Then -> @subject.fromRoman("IX") == 9
    Then -> @subject.fromRoman("X") == 10
    Then -> @subject.fromRoman("XI") == 11
    Then -> @subject.fromRoman("XII") == 12
    Then -> @subject.fromRoman("XIII") == 13
    Then -> @subject.fromRoman("XIV") == 14
    Then -> @subject.fromRoman("XV") == 15
    Then -> @subject.fromRoman("XX") == 20
    Then -> @subject.fromRoman("XL") == 40

#
#   describe '#fromArabic', ->
#     When -> @result = @subject.fromArabic(1)
#     Then -> @result == "I"
