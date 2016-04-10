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

    # split into an array of individual numerals

    # perform initial validation of the numerals
      # ensure all numerals are valid roman numerals
      # if 2 consecutive numerals, all following numerals must
      # be <= that numeral value to validate that there are not
      # multiple values being subtracted

    # for each of the numerals
      # get the mapped value
      # get the next numeral's mapped value
      # if no next value or if the value is greater than or equal to the next value
        # add the value to the sum
      # else if the value is less than the next value
        # validate that the value is a power of 10
        # validate that the value is >= 1/10 of the next value
        # subtract the value from the sum
    # return sum












###
    result = @VALUES[roman]
    if !result
      digits = roman.split('')
      sum = 0
      for d in digits
        sum += @VALUES[d]
      return sum
    result
###

  fromArabic: (arabic) ->
    "I"
