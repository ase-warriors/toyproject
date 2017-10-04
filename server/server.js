const express = require('express');
const app = express()

app.get('/', (req, res) => {
  res.send(index_page);
});

app.use('/public', express.static('../client/public/'));

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
