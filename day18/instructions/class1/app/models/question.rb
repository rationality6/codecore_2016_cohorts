class Question < ApplicationRecord
    validates :title, presence: true, uniqueness: {message: "must be unique!"}
    validates :body, presence: true, length:{minimum:5}

    validates :body, uniqueness:{scope: :title}

end
