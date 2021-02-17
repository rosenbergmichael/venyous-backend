class User < ApplicationRecord
  
  has_secure_password

  has_many :venues, foreign_key: :user_id

end
