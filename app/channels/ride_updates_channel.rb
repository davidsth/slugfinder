class RideUpdatesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "ride_updates"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
