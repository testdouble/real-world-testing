describe "Spies", ->
  describe "verification", ->
    Given -> @spy = jasmine.createSpy()
    When -> @spy(11)
    Then -> expect(@spy).toHaveBeenCalledWith(jasmine.argThat (n) -> n > 10)
