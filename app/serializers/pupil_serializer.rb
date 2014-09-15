class PupilSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :facebook, :twitter, :age

  def name
		object.user.party.name  	
  end

  def email
  	object.user.email
  end

  def facebook
  	object.user.facebook
	end

	def twitter
		object.user.twitter
	end

	def age
		Date.today.year - object.user.party.birthday.year
		
	end

end
