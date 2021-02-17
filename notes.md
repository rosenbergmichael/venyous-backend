Models

## User
:name, :username, :password

has_many :venues


## Venue
:name - string, :image - string, :location - string, :esttotal - float, :user_id - integer

has_many :infos OR has_one: info


## Info
venue_id:integer capacity:integer dates rentalfee:float ceremonyfee:float perperson:float otherpp:float notes:text 

belongs_to :venue