express = require("express")
manageProblems = require("./lib/manage-problems")

app = express()

app.use(express.bodyParser())

app.get "/", (req, res, err) ->
  res.send 200

app.get "/problem/random", (req, res, err) ->
  res.json(manageProblems.generate())

app.get "/problem/:id", (req, res, err) ->
  res.json(manageProblems.find(req.query.id))

app.post "/solution", (req, res, err) ->
  res.send(501)

module.exports =
  start: (quiet) ->
    @server = app.listen 8080, ->
      console.log("Now accepting requests at http://localhost:8080") unless quiet?

  stop: ->
    @server?.close()
