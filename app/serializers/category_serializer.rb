class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :appointments, :image
  has_many :appointments
end
