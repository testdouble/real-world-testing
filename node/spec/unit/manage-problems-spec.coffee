describe "manageProblems", ->
  describe "generate", ->
    Given -> @providesRandomProblem = jasmine.createSpyObj('random', ['provide'])
    Given -> @problemStore = jasmine.createSpyObj('saver', ['save'])
    Given -> @describesProblem = jasmine.createSpyObj('describe', ['describe'])
    Given -> @subject = requireSubject "lib/manage-problems",
      "./provides-random-problem": @providesRandomProblem
      "./problem-store": @problemStore
      "./describes-problem": @describesProblem

    Given -> @providesRandomProblem.provide.andReturn("some problem")
    Given -> @describesProblem.describe.when("some problem").thenReturn("described problem")
    Given -> @problemStore.save.when("described problem").thenReturn("saved problem")
    When -> @result = @subject.generate()
    Then -> @result == "saved problem"
