describe 'ConvertsNumerals', ->
  Given -> @subject = new ConvertsNumerals()

  describe '#fromRoman', ->
    # invalid numerals
    Then -> @subject.fromRoman("J")   == undefined
    Then -> @subject.fromRoman("S")   == undefined

    # invalid types
    Then -> @subject.fromRoman(5)     == undefined
    Then -> @subject.fromRoman({})    == undefined
    Then -> @subject.fromRoman([])    == undefined
    Then -> @subject.fromRoman(true)  == undefined
    Then -> @subject.fromRoman(undefined)  == undefined
    Then -> @subject.fromRoman(null)  == undefined

    # single numerals
    Then -> @subject.fromRoman("I")   == 1
    Then -> @subject.fromRoman("V")   == 5
    Then -> @subject.fromRoman("X")   == 10
    Then -> @subject.fromRoman("L")   == 50
    Then -> @subject.fromRoman("C")   == 100
    Then -> @subject.fromRoman("D")   == 500
    Then -> @subject.fromRoman("M")   == 1000

    # added numerals
    Then -> @subject.fromRoman("II")  == 2
    Then -> @subject.fromRoman("III")  == 3
    Then -> @subject.fromRoman("VI")  == 6
    Then -> @subject.fromRoman("VII")  == 7
    Then -> @subject.fromRoman("XX")  == 20

    # subtracted numerals

    # subtract only by powers of 10 (1, 10, 100)
    Then -> @subject.fromRoman("IV")  == 4
    Then -> @subject.fromRoman("IX")  == 9
    Then -> @subject.fromRoman("VX")  == undefined

    Then -> @subject.fromRoman("IL")  == 49
    Then -> @subject.fromRoman("VL")  == undefined

    Then -> @subject.fromRoman("XC")  == 90
    Then -> @subject.fromRoman("VC")  == undefined

    Then -> @subject.fromRoman("LD")  == undefined

    # dont subtract a letter from another letter more than
    # 10x greater
    Then -> @subject.fromRoman("CD")  == 400
    Then -> @subject.fromRoman("IL")  == undefined
    Then -> @subject.fromRoman("IM")  == undefined

    # subtract only a single letter from a single numeral
    Then -> @subject.fromRoman("IIX")  == undefined
    Then -> @subject.fromRoman("XXXC")  == undefined
    Then -> @subject.fromRoman("CCCCM")  == undefined

    # added and subtracted numerals
    Then -> @subject.fromRoman("XIX")  == 19
    Then -> @subject.fromRoman("CXC")  == 190
    Then -> @subject.fromRoman("CLC")  == undefined
    Then -> @subject.fromRoman("MCXC")  == 1190

  describe '#fromArabic', ->
    When -> @result = @subject.fromArabic(1)
    Then -> @result == "I"
