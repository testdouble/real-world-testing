module.exports =
  describe: (problem) ->
    problem.description = "#{problem.operands.left} #{problem.operator} #{problem.operands.right}"
    problem
