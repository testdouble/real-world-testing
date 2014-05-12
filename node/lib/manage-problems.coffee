providesRandomProblem = require("./provides-random-problem")
problemStore = require("./problem-store")
describesProblem = require("./describes-problem")

module.exports =
  generate: ->
    problemStore.save(describesProblem.describe(providesRandomProblem.provide()))

  find: (id) ->
    problemStore.find(id)
