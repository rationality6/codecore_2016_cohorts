var express = require('express');
var router = express.Router();

router.get('/',function(req,res,next){
    res.send("foo")
})

router.post("/",function(req,res,next){
    var question = new Question({
        title: req.body.title,
        body: req.body.body
    });

    question.save(function(err,question){
        if(err){
            res.render('questions/new',{errors:err})
        } else {
            res.end("Questions Created")
        }
    })
})

module.exports = router;
