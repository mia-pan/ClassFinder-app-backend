class BlogSerializer < ActiveModel::Serializer
  attributes :id, :image, :title, :story
end
