# frozen_string_literal: true

task update_point: :environment do
  user = User.all.sample
  user = user.point = rand(150..1_000_000)
  user = user.save
end
