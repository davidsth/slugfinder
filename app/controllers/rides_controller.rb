class RidesController < ApplicationController
  def new
    @ride = Ride.new
  end

  def create
    location = Location.find_or_create_by( name: params[:location_name] )
    @ride = Ride.new(waiting_location: location, status: 'waiting')
    if @ride.save
      redirect_to root_path, notice: "You're now waiting for a ride!"
    else
      redirect_to root_path, alert: "Error creating ride."
    end
  end

  def index
    @rides = Ride.where(status: 'waiting')
    render json: @rides
  end

  def show
    @ride = Ride.find(params[:id])
  end

  def update
    @ride = Ride.find(params[:id])
    @ride.update(status: params[:status])
    ActionCable.server.broadcast("ride_updates", @ride)
    render json: @ride
  end

end
