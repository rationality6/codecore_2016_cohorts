var express = require('express');
var router = express.Router();
var Question = require('../models/question');

router.get('/', function(req, res, next) {
    res.render('contact/index', {errors:{}});
});

router.post('/', function(req, res, next) {
    var question = new Question({
        title:req.body.name,
        body:req.body.contact,
    })
    question.save(function(err, contact){
        if(err){
            res.render('contact/index',{errors:err})
        }else{
            res.redirect("/contact/" + contact._id)
        }
    })
})

router.get('/:id',function(req,res){
    // console.log('show log'+Question.findOne({_id: req.params.id}));
    Question.findOne({_id: req.params.id},function(err, contact_data){
        if(err){
            next();
        }else{
            res.render("contact/show",{contact:contact_data});
        }
    })
})

router.delete("/:id",function(req,res){
    Question.remove({_id:req.params.id},function(err){
        if (err) {
            next();
        }else{
            res.redirect("/");
        }
    })
})

router.post('/:contact_id/answers', function(req, res, next) {
    Question.findOne({_id:req.params.contact_id},function(err,contact){
        if (err) {
            next();
        }else{
            contact.answers.push({body:req.body.body});
            contact.save(function(err,answer){
                if(err){
                    next()
                }else{
                    res.redirect("/contact/"+contact._id);
                }
            })
        }
    })
})

module.exports = router;
