# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mia = User.create(username: "mia", email:"miapanyuewei@gmail.com", password:"1111", isTeacher: "false")
AA = User.create(username: "AA", email:"AA@gmail.com", password:"1111", isTeacher: "ture")

yoga = Category.create(name: "yoga", description: "In this class the basic, foundational yoga postures are practiced to align, strengthen and promote flexibility in the body.")
kickboxing = Category.create(name: "kickboxing", description: "Build stamina, improve coordination and flexibility, and burn calories as you build lean muscle with this fun and challenging workout.")
barre = Category.create(name: "barre", description: "Barre fitness is a hybrid workout class - combining ballet-inspired moves with elements of Pilates, dance, yoga and strength training.")
climbing = Category.create(name: "climbing", description: "ant to learn how to climb with an auto-belay? This introductory course will teach you safely clip in and climb on your very first day. No need for a partner or previous experience.")

appointment1 = Appointment.create(name: "yoga 1", time: Time.now, duration: 45, location:"redmond", instructor:"CC", status:"open", category_id: yoga.id)
appointment2 = Appointment.create(name: "kickboxing 1", time: Time.now, duration: 60, location:"redmond",  instructor:"AA", status:"open", category_id: kickboxing.id)
appointment3 = Appointment.create(name: "barre  1", time: Time.now, duration: 50, location:"redmond",  instructor:"BB", status:"close", category_id: barre.id)
appointment4 = Appointment.create(name: "rock climbing 1", time: Time.now, duration: 120, location:"redmond",  instructor:"DD", status:"open", category_id: climbing.id)

ua1 = UserAppointment.create(user_id: mia.id, appointment_id: appointment1.id)
ua2 = UserAppointment.create(user_id: mia.id, appointment_id: appointment2.id)
ua3 = UserAppointment.create(user_id: mia.id, appointment_id: appointment3.id)
ua4 = UserAppointment.create(user_id: mia.id, appointment_id: appointment4.id)

blog1 = Blog.create(image: "https://images.pexels.com/photos/1882005/pexels-photo-1882005.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", 
title: "my first yoga class", 
story: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
user_id: mia.id)

puts "seeded"
