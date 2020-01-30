if Users.count.zero?
  puts 'Seeding Users'

  Users.create!(email: 'user@u.com', password: '123456')
  Users.create!(email: 'user2@u.com', password: '123456')
end