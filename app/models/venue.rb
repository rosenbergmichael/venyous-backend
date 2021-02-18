class Venue < ApplicationRecord

  belongs_to :user 

  has_one :info, foreign_key: :venue_id

end
