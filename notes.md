Models

Venue
:name - string, :photo - string, :location - string, :esttotal - float

has_many :infos OR has_one: info


Info
:venue_id - integer, :capacity - integer, :dates - text, :venuerental - float, :ceremonyfee - float,
:perperson - float, :otherpp - float, :notes - text 

belongs_to :venue