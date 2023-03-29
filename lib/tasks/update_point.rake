task update_point: :environment do
  user = User.all.sample
  user = user.point = rand(150..1000000)
  user = user.save
end
