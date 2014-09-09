class PupilSerializer < ActiveModel::Serializer
  attributes :id, :name

  def name
	object.user.party.name  	
  end


end
