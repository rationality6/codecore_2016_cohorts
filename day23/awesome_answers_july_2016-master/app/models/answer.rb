class Answer < ApplicationRecord
  validates :star_count, presence: true, uniqueness: { scope: :question_id }

  # this line assumes that the answwers table has field called questions_id
  # this gives us a handy method top fetch the associated question with an Answer#answer = Answer.last
  # q = answr.qustion

  belongs_to :question
end
