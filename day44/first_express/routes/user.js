var express = require('express');
var router = express.Router();

router.get('/:id',function(req,res){
    res.send('Received a GET request, param:' + req.params.id);
})

router.post('/',function(req,res){
    console.log(JSON.stringify(req.body,null,2));

    res.json({
        success: true,
        user: req.body.username,
        foo: req.body.foo,
        othervalue: req.body.othervalue,
        root: true,
        select:[1,2,3],
        address:{
            home:123,
            work:345,
        },
     })
});

router.put('/', function(req,res){
    res.status(400).json({message: 'Hey, you. Bad Request!'})
})

router.delete('/',function(req, res){
    res.send('Received a DELETE request')
})

module.exports = router;
