class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :appointment
end
