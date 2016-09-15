var express = require('express');
var app = express();

app.get('/', function(req, res) {
    res.send('Hello world');
})

app.get('/user/:id',function(req,res){
    res.send('Received a GET request, param:' + req.params.id);
})

app.post('/user',function(req,res){
    res.json({ success: true })
});

app.put('/user', function(req,res){
    res.status(400).json({message: 'Hey, you. Bad Request!'})
})

app.delete('/user',fuction(req, res){
    res.send('Received a DELETE request')
})

app.listen(3000, function(){
    console.log("Example App is listening on port 3000");
})
