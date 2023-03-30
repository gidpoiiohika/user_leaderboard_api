class User < ApplicationRecord
  validates :name, presence: true
  validates :country, presence: true
  validate :limit_points

  def limit_points
    errors.add(:user_id, "limit from 150 to 1000000") if self.point < 150 || self.point > 1000000
  end

  scope :limit_by_user, -> { limit(100) }
  scope :order_by_point, -> { order('point DESC')}

  def self.filtered(params)
    scope = User.all
    scope = scope.order_by_point if params[:sort_by_point].present?
    scope = scope.order_by_point.where(country: "#{params[:country].strip}") if params[:country].present?
    scope = scope.limit_by_user
  end
end
