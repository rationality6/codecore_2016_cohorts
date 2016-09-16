var mongoose = require('mongoose');

var AnswerSchema = mongoose.Schema({
    body:{type:String}
})

var QuestionSchema = mongoose.Schema({
    title: {
        type: String,
        required: true
    },
    body: {
        type: String
    },
    answers: [AnswerSchema]
})

var Quetion = mongoose.model('Question',QuestionSchema);

module.exports = Quetion;
