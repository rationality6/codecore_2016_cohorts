var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    res.render('contact/index', {});
});

module.exports = router;
