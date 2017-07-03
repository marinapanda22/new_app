# Создание пользователей
admin = User.create!(email: 'admin@example.com', password: 'password', role: 'admin', name: Faker::HarryPotter.character)
admin.save
user = User.create!(email: 'user@example.com', password: 'password', role: 'none', name: Faker::HarryPotter.character)
user.save


dir = Rails.root + 'app' + 'assets' + 'images'
10.times do
  Post.create(title: "Beautiful nature", image:File.new(dir + "5.jpg"),
                 user_id: 1
  )
end
10.times do
  Post.create(title: "Lovely panda", image:File.new(dir + "24.jpg"),
                 user_id: 2
  )
end