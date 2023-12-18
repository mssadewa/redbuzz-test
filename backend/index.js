const express = require('express');
const db = require('./db');

const routes = require('./routes');

const app = express();

app.use(routes);

db.authenticate().then(() => {
  app.listen(5174, () => {
    console.log('Backend running..');
  });
});
