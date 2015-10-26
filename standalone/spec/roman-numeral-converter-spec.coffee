# "I" 1
# "II" 2
# "IV" 4
#  Simplest thing that would work
#  Refactor and condense
#  Fine to write a lot of english at first
#  Always look to see test fail first - work incrementally

describe "Roman Numeral Converter", ->
  Given -> @subject = new ConvertsNumerals()

  Then	-> @subject.fromRoman("I") == 1
  Then	-> @subject.fromRoman("II") == 2
  Then	-> @subject.fromRoman("III") == 3
  Then	-> @subject.fromRoman("IV") == 4
