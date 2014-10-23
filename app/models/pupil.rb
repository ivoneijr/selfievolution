class Pupil < ActiveRecord::Base

  belongs_to :user, autosave: true
  belongs_to :coach, autosave: true
  belongs_to :gym,  autosave: true

  
end
