class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :time, :duration, :location, :instructor, :status
end
