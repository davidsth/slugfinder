class Location < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode

  def full_address
  "#{name} (#{laltitude}, #{longitude})"
  end
end
