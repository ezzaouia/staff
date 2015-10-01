var http = require('http');
var config = {
  PORT: 3000
}
var server = http.createServer(function (req, res) {
  res.writeHead(200, {
    'Content-type': 'text/plain'
  })
  res.end('listening on ' + config.PORT);
});

server.listen(config.PORT, 'localhost');
