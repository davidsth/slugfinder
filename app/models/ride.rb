class Ride < ApplicationRecord
  belongs_to :driver, class_name: 'User', optional: true
  belongs_to :rider, class_name: 'User', optional: true
  belongs_to :waiting_location, class_name: 'Location'
  belongs_to :destination_location, class_name: 'Location', optional: true

  def self.match_rides(start_location, end_location, time)
    where("start_location = ? AND end_location = ? AND time >= ?", start_location, end_location, time)
  end
end
