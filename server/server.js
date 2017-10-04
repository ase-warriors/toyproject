const express = require('express');
const app = express()
const { Client } = require('pg')

const dbclient = new Client()

dbclient.connect()
app.get('/', (req, res) => {
  res.send(index_page);
});

app.get('/get', (req2, res2) => {
  dbclient.query('SELECT entry_count FROM Vendor', (err, res) => {
    console.log(err ? err.stack : res.rows);
    const jsonreply = {
      data: res.rows.length
    };
    res2.json(jsonreply);
  });
});

app.post('/update', (req2, res2) => {
  dbclient.query('INSERT INTO Vendor VALUES (12)', (err, res) => {
    console.log(err ? err.stack : res.rows);
    res2.end();
  });
});

app.use('/public', express.static('client/public/'));

app.listen(8080, function () {
  console.log('Example app listening on port 8080!');
})

const index_page = `<html>
  <head>
    <title>Hello world</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
  </head>
  <body>
    <div id="react-root"></div>
    <script src="public/bundle.js"></script>
  </body>
</html>
`;
