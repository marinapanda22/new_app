# Создание пользователей
admin = User.create!(email: 'admin@example.com', password: 'password', role: 'admin', name: 'Admin')
admin.save
user = User.create!(email: 'user@example.com', password: 'password', role: 'none', name: 'User')
user.save
