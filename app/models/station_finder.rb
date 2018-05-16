class StationFinder
  def initialize(zip) 
    @zip = zip
  end

  def stations
    caller = StationCaller.new(@zip)
    caller.station
  end
end
