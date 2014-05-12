ROMAN_TO_ARABIC =
  I: 1
  V: 5
  X: 10
  L: 50

window.ConvertsNumerals = class ConvertsNumerals

  fromRoman: (roman) ->
    _(roman.split("")).chain().
      map (c) ->
        ROMAN_TO_ARABIC[c]
      .map (val, i, values) ->
        if values[i+1]? && values[i+1] > val
          -1 * val
        else
          val
      .reduce (memo, val) ->
        memo + val
      .value()

  #
  # fromArabic: (arabic) ->
  #   "I"
