# "I" 1
# "II" 2
# "IV" 4

describe "Roman Numeral Converter", ->
  Given -> @subject = new ConvertsNumerals()
  Then	-> @subject != undefined