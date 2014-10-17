class Pupil < ActiveRecord::Base

  belongs_to :user
  belongs_to :coach
  belongs_to :gym

  
end
