var express = require('express');
var app = express();


const port = 8080;
const name = process.env.GREETING_NAME !== undefined ? process.env.GREETING_NAME : "Unknown";

app.listen(port, function () {
  console.log(`Server initialized on ${port}`);
});

app.get('/', function (_, res) {
  res.send(`Hello, ${name}`);
});
