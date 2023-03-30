class LeaderboardController < ApiController
  def index
    @users = User.filtered(filter_params)

    render json: @users
  end

  private

  def filter_params
    params.permit(:name, :country, :point)
  end
end
