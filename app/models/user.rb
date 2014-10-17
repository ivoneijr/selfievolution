class User < ActiveRecord::Base
  belongs_to :party

  validates :email, presence: true

end
