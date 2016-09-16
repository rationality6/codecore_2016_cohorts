var express = require('express');
var router = express.Router();
var Products = require('../models/products');

router.get('/new', function(req, res, next) {
    res.render("products/new",{title:"Product",errors:{}});
})

router.get('/', function(req, res, next) {
    Products.find({},function(err,data){
        res.render("products/index",{products:data,errors:{}});
    })
})

router.post('/',function(req,res,next){
    var product = new Products({
        title:req.body.title,
        description:req.body.description,
        price:req.body.price,
    })
    product.save(function(err,product){
        if(err){
            res.reder('/products/index',{})
        }else{
            res.redirect("/products/"+product._id)
        }
    })
})

router.get('/:id',function(req,res){
    Products.findOne({_id:req.params.id},function(err,product){
        if(err){
            next();
        }else{
            res.render("products/show",{product:product})
        }
    })
})

router.delete("/:id",function(req,res){
    console.log('Carrot Top')
    Products.remove({_id:req.params.id},function(err){
        if (err) {
            next()
        } else{
            // res.redirect('/products/');
            res.redirect('/products/');
        }
    })
})

router.patch('/:id',function(req,res){
    console.log('foo');
})

module.exports = router;
