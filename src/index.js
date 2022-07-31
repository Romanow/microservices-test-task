const http = require('http');

const hostname = '0.0.0.0';
const port = 8080;
const GREETING_NAME = process.env.GREETING_NAME

const index = http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.end(`Hello, ${GREETING_NAME}\n`);
});

index.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
});
