class Registration < ActiveRecord::Base
  has_one :attendee
  has_one :event

end
