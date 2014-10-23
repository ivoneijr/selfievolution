class User < ActiveRecord::Base
  belongs_to :party,  autosave: true

  validates :email, presence: true

end
