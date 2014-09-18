class AddressSerializer < ActiveModel::Serializer
  attributes :id, :country, :state, :city, :neighborhood, :street, :number, :complement

end
