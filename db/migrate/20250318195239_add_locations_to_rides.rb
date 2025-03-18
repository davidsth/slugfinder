class AddLocationsToRides < ActiveRecord::Migration[8.0]
  def change
    add_reference :rides, :waiting_location, foreign_key: {to_table: :locations}, index: true
    add_reference :rides, :destination_location, foreign_key: {to_table: :locations}, index: true
  end
end
