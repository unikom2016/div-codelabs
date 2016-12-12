// var express = require('express');
// var bodyParser = require('body-parser');
// var twilio = require('twilio');

// var app = express();
// var mongoose = require('mongoose');
// var route = require('./config/routes');
// var port = 8080;

// // routing
// // app.get('/test', function(request, response){
// //   response.send("Selamat Datang!");
// // });

// // app.get('/hallo', function(request, response){
// //   response.send("Hello, world!");
// // });

// // setting bodyParser
// app.use(bodyParser.json());
// app.use(bodyParser.urlencoded(
//   {extended: true}
// ));

// // koneksi mongodb
// mongoose.connect("mongodb://localhost:27017/blog");

// app.use('/api', route.router);
// app.listen(port);
// console.log('Listening on: ' + port);

// Download the Node helper library from twilio.com/docs/node/install
// These consts are your accountSid and authToken from https://www.twilio.com/console
var accountSid = 'AC26086e54b730483303d4ef935d018e70'; // Your Account SID from www.twilio.com/console
var authToken = '7f8d37f8e96a38c6302273287259d56f';   // Your Auth Token from www.twilio.com/console
const client = require('twilio')(accountSid, authToken);

client.messages
  .create({
    body: 'Hey Mr Nugget, you the bomb!',
    to: '+628986957147',
    from: '+15005550006',
  })
  .then((sms) => process.stdout.write(sms.sid));

// var plivo = require('plivo');
// var p = plivo.RestAPI({
//   authId: 'MAYMRINWI3ZTCYZTY1NT',
//   authToken: 'ODRiMzg4MmUwOTU2NjdiMjQ5MDU5ZmY3ZWRlZjE5'
// });

// var params = {
//     'src': 'ALPHA-ID', // Alphanumeric sender ID
//     'dst' : '+628986957147', // Receiver's phone Number with country code
//     'text' : "Hi, text from Plivo" // Your SMS Text Message - English
// };

// // Prints the complete response
// p.send_message(params, function (status, response) {
//     console.log('Status: ', status);
//     console.log('API Response:\n', response);
// });