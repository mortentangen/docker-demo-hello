'use strict';

const express = require('express');
const http = require('http');
const app = express();

app.get('/', function (req, res) {
  http.get(
    {
      host: 'localhost',
      port: 3001,
      path: '/'
    },
    response => {
      response.setEncoding('utf-8');
      response.on('data', body => res.send(`Hello ${body}`))
    })
});

app.listen(3000, function () {
  console.log('App listening on port 3000')
});
