class StationFinder
  def initialize(zip) 
    @zip = zip
  end

  def stations
    caller = StationCallerService.new(@zip)
    caller.stations
  end
end
