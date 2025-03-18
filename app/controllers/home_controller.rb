class HomeController < ApplicationController
  def index
    @waiting_riders = Ride.where(status: :waiting)
  end
end
