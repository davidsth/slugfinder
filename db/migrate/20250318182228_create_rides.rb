class CreateRides < ActiveRecord::Migration[8.0]
  def change
    create_table :rides do |t|
      t.integer :driver_id
      t.integer :rider_id
      t.string :start_location
      t.string :end_location
      t.string :status
      t.datetime :time

      t.timestamps
    end
  end
end
