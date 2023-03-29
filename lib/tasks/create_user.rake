task create_event_and_player: :environment do
  users = []
  20.times do
    users << { name: Faker::Internet.username, country: Faker::Address.country, point: rand(150..1000000)}
  end

  User.insert_all(users)
end
