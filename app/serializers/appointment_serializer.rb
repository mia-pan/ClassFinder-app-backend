class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :time, :duration, :location, :instructor, :status, :user_appointments 
  belongs_to :category
end
