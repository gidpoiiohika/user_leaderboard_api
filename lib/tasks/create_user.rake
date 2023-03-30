task create_event_and_player: :environment do
  users = 1000000.times.map { |t| { name: "name - #{t}", country: Faker::Address.country, point: rand(150..1000000) }}

  User.insert_all(users)
end
