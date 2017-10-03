const express = require('express');
const app = express()

app.get('/', (req, res) => {
  res.send('hello world\n');
});

app.use('/public', express.static('../client/public/'));

app.listen(8080, function () {
  console.log('Example app listening on port 3000!');
})
