// const http = require('http');

// const server = http.createServer();

// server.on('request', (req, res) => {
//     res.setHeader('contnent-type','text/html');
//     res.write('Welcome To Browser-1');
//     res.end('<h1>Thanks for visiting this website</h1>');
// })

// server.listen(1234,()=>{
//     console.log(`server start at http://localhost:1234`);
// });

const http = require('http');

// Function to create a server
const createServer = (port) => {
  const server = http.createServer((req, res) => {
    res.setHeader('Content-Type', 'text/html'); // Corrected the typo in 'Content-Type'
    res.write('Welcome To Browser-1');
    res.end('<h1>Thanks for visiting this website</h1>');
  });

  server.listen(port, () => {
    console.log(`Server started at http://localhost:${port}`);
  });

  return server;
};

// Create servers on ports 1234 through 1238
const ports = [1234, 1235, 1236, 1237, 1238];
const servers = ports.map(createServer);
