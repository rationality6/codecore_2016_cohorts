var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var QuestionSchema = new Schma({
    title: {type:String, trim: true, required: true},
    body: {type:String, trim: true, required:true}
})

module.exports = mongoose.model("Question",QuestionSchema);
