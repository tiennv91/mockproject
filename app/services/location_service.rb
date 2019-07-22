class LocationService
  def call
    @locations = Location.all
  end 
end 