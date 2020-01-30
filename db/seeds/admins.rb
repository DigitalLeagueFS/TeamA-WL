if Admin.count.zero?
  puts 'Seeding Admins'

  Admin.create!(name: 'Admin', email: 'admin@a.com', password: '123456')
end