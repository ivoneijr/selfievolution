class Assessment < ActiveRecord::Base

  belongs_to :pupil
  belongs_to :coach
  belongs_to :gym


end
