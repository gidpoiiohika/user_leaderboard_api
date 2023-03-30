# frozen_string_literal: true

task create_event_and_player: :environment do
  users = 1_000_000.times.map do |t|
    { name: "name - #{t}", country: Faker::Address.country, point: rand(150..1_000_000) }
  end

  User.insert_all(users)
end
