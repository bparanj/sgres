50.times do
  u = User.new(name: Faker::Name.first_name, surname: Faker::Name.last_name)
  u.pets << Pet.create(name: Faker::Name.first_name)
  u.save
end