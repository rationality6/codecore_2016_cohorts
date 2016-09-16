var express = require('express');
var router = express.Router();

router.get('/new', function(req, res, next) {
  res.render("questions/new",{data:"daetaaaaaaa!!!",name: "Tam"});
})

router.post('/',function(req,res,next){
  console.log(req.body.title);
  console.log(req.body.body);
  // res.end(JSON.stringify(req.body,null,2));
})

module.exports = router;
