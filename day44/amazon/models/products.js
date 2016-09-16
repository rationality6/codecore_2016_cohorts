var mongoose = require('mongoose');

var ProductsSchema = mongoose.Schema({
    title: {
        type: String,
        required: true
    },
    description: {
        type: String
    },
    price: {
        type: Number
    },
})

module.exports = mongoose.model('products',ProductsSchema);
