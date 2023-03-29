class User < ApplicationRecord
  validates :name, presence: true
  validates :country, presence: true
  validate :limit_points

  def limit_points
    errors.add(:user_id, "limit from 150 to 1000000") if self.point < 150 || self.point > 1000000
  end
end
