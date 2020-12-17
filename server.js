var express = require('express')
var app = express();

app.set('port', (process.env.PORT || 80))
app.use(express.static(__dirname + '/public'))

app.get('/', function(req, res) {
  res.send('Hello World!')
})

app.listen(app.get('port'), function() {
  console.log("Hello World is running on:" + app.get('port'))
})
