50.times do
  User.create(name: Faker::Name.first_name, surname: Faker::Name.last_name)
end