class Gym < ActiveRecord::Base

  belongs_to :user
  has_many :coaches
  has_many :pupils

end
