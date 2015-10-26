# "I" 1
# "II" 2
# "IV" 4

describe "Roman Numeral Converter", ->
  Given -> @subject = new ConvertsNumerals()

  Then	-> @subject.fromRoman("I") == 1
  Then	-> @subject.fromRoman("II") == 2
  Then	-> @subject.fromRoman("III") == 3
