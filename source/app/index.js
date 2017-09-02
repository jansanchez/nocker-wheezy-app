'use strict';

import express from 'express';
const app = express();
const port = 2999;

app.get('/', (req, res) => {
  res.send('Hello World from Nocker Wheezy!');
});

app.listen(port, () => {
  console.log('* App listening on container\'s port: ' + port);
  console.log('  But in your HOST machine listening on http://localhost:3005.');
});
