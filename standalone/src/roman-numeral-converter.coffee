window.ConvertsNumerals = class ConvertsNumerals

  VALUES:
    I: 1
    V: 5
    X: 10
    L: 50
    C: 100
    D: 500
    M: 1000

  fromRoman: (roman) ->
    # check the type
    if typeof roman != 'string'
      return undefined

    # split into an array of individual numerals
    numerals = roman.split('')

    # ensure all numerals are valid roman numerals
    for numeral in numerals
      if not @VALUES.hasOwnProperty(numeral)
        return undefined

    # if 2 consecutive numerals, all following numerals must
    # be <= that numeral value to validate that there are not
    # multiple values being subtracted

    nextCannotBeLarger = false
    hasInvalidSubtraction = false

    numerals
      .map((numeral) =>
        return @VALUES[numeral])
      .reduce((prev, value) =>
        if value == prev
          nextCannotBeLarger = true
        else if value > prev and nextCannotBeLarger
          hasInvalidSubtraction = true
        accum = value)

    if hasInvalidSubtraction
      return undefined

    sum = 0

    for numeral, index in numerals
      value = @VALUES[numeral]
      nextNumeral = numerals[index + 1]
      nextValue = @VALUES[nextNumeral]

      if not nextValue or value >= nextValue
        sum += value
      else if value < nextValue
        isPowerOfTen = [1, 10, 100].indexOf(value) > -1

        isAtLeastTenPercentOfNext = (value / nextValue >= 0.1)

        if not isPowerOfTen or not isAtLeastTenPercentOfNext
          return undefined

        sum -= value
    return sum

