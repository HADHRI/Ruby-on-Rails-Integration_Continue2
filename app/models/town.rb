class Town < ActiveRecord::Base
  
  before_validation :load_position
  validates :lat, :lon, presence: true


  private
  def load_position
    place= Nominatim.search(name).limit(1).first
    if place
    self.lat = place.lat
    self.lon = place.lon
    end
  end
end