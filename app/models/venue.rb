class Venue < ApplicationRecord

  belongs_to :user 

  has_many :infos, foreign_key: :venue_id

end
