class RestaurantsController < ApplicationController

  def index
    render json: {
      data: {
        message: "Welcome #{current_user.name}",
        user: current_user
      }
    }, status: 200
  end
end
