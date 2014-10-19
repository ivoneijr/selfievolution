class PupilSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :webpage, :sex, :birthday, :email, :password, :facebook, :twitter, :age, :address

  def name
    name = object.user.party.name 
    if name
      name
    end
  end

  def phone
    object.user.party.phone    
  end

  def webpage
    object.user.party.webpage
  end
  
  def birthday
    object.user.party.birthday
  end

  def sex
    object.user.party.sex
  end

  def email
  	object.user.email
  end

  def password
    object.user.password
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
