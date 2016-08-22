class User < ActiveRecord::Base
  has_secure_password

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true,
                    format: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end
