class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :appointments
end
