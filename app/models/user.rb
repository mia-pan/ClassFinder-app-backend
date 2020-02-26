class User < ApplicationRecord
    has_secure_password
    
    has_many :user_appointments
    has_many :appointments, through: :user_appointments
    has_many :blogs
end
