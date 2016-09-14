json.array! @questions do |question|
  json.id question.id
  json.title question.title.titleize
  json.body question.body
  json.created_on question.created_at.strftime("%Y-%B-%d")
  json.answer__count question.answers.count
  json.creater question.user.full_name
  json.answers question.answers do |answer|
    json.id answer.id
    json.body answer.body
    json.user answer
  end
  json.user do
    json.first_name question.user_first_name
    json.last_name question.user_last_name
  end
  json.url question_url(question)
end
