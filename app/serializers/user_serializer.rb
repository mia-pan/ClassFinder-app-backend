class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :blogs, :appointments
end
