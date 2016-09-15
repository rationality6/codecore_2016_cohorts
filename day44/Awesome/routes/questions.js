var express = require('express');
var router = express.Router();

router.get('/new', function(req, res, next) {
  res.render("questions/new",{data:"daetaaaaaaa!!!",name: "Tam"});
})

router.post('/',function(req,res,next){
  // res.end(req,);
})

module.exports = router;
