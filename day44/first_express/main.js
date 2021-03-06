var express = require('express');
var app = express();
var mongoose = require('mongoose')

var user = require('./routes/user');
var morgan = require('morgan');
var bodyParser = require('body-parser');

var questions = require('./routes/questions')

// var myLogger = function(req,res,next){
//     console.log(req.url);
//     next();
// };

// app.use(myLogger);

app.use(morgan('dev'));
app.use(bodyParser.json());
app.use('/', express.static('public'));

app.get('/', function(req, res) {
    res.send('Hello world');
})

app.use('/user', user);
app.use('/questions',questions)

mongoose.connect('mongodb://localhost/awesome_answers_test');

app.listen(3000, function() {
    console.log("Example App is listening on port 3000");
});
