class Coach < ActiveRecord::Base

  belongs_to :user
  has_many :pupils
  has_many :gyms




end
