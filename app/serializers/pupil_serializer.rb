class PupilSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :facebook, :twitter, :age, :address

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
		if object.user.party.birthday?
			Date.today.year - object.user.party.birthday.year
		end
	end

  def address
    object.user.party.address
  end

end
