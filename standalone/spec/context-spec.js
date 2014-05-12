describe("Testing", function() {
  Given(function() {
    this.subject = "subject";
  });
  describe("subtesting", function() {
    When(function() {
      this.subsubject = "subsubject";
    });
    Then(function() {
      this.subject === "subject";
      this.subsubject === "subsubject";
    });
  });
});
