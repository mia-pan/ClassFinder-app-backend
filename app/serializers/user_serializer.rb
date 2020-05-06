class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :blogs,  :category_info, :blog_info, :isTeacher, :user_appointments
  has_many :user_appointments
#second way to trigger the association with category and appointment 
# let appointment neseted inside the category
  def category_info
      {
        categories: self.object.appointments.map{ |appt| 
                        appt.category
        }
        
      }
  end 

  def blog_info
    {
      blogs: self.object.blogs
    }
  end 

  # def appointments_info
    # {
  #   "id": 1,
  #   "name": "yoga 1",
  #   "time": "2020-02-26T19:29:53.881Z",
  #   "duration": 45,
  #   "location": "redmond",
  #   "instructor": "CC",
  #   "status": "open",
  #   "category_id": 1,
  #   "created_at": "2020-02-26T19:29:53.936Z",
  #   "updated_at": "2020-02-26T19:29:53.936Z"
  # }


  # end
end
