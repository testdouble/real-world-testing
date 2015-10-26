# "I" 1
# "II" 2
# "IV" 4

describe "Roman Numeral Converter", ->
  Given -> @subject = new ConvertsNumerals()

  describe "it converts I to 1", ->
    When 	-> @result = @subject.fromRoman("I")
    Then	-> @result == 1

  describe "it converts II to 2", ->
    When 	-> @result = @subject.fromRoman("II")
    Then	-> @result == 2