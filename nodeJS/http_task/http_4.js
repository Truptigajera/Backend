const http = require('http');

// Function to create a server with a unique message and heading
const createServer = (port, message, heading) => {
  const server = http.createServer((req, res) => {
    res.setHeader('Content-Type', 'text/html'); // Corrected the typo in 'Content-Type'
    res.write(message);
    res.end(heading); // Corrected to use the heading parameter
  });

  server.listen(port, () => {
    console.log(`Server started at http://localhost:${port}`);
  });

  return server;
};

// Messages and headings for each server
const messages = [
  'Welcome To Browser-1',
  'Welcome To Browser-2',
  'Welcome To Browser-3',
  'Welcome To Browser-4',
  'Welcome To Browser-5'
];

const headings = [
  '<h1>Thanks for visiting this website : 1</h1>',
  '<h1>Thanks for visiting this website : 2</h1>',
  '<h1>Thanks for visiting this website : 3</h1>',
  '<h1>Thanks for visiting this website : 4</h1>',
  '<h1>Thanks for visiting this website : 5</h1>'
];

// Ports for each server
const ports = [1111, 2222, 3333, 4444, 5555];

// Create servers with unique messages and headings
const servers = ports.map((port, index) => createServer(port, messages[index], headings[index]));
