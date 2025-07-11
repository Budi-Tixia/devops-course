const express = require('express');
const app = express();
const port = 5000;

app.get('/', (req, res) => {
  res.send('Hello from the backend API!');
});

app.listen(port, () => {
  console.log(`Backend server running on http://localhost:${port}`);
});
