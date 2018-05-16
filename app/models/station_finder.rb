class StationFinder
  def initialize(zip) 
    @zip = zip
  end

  def stations
    caller = StationCallerService.new(@zip)
    binding.pry
    caller.stations
  end
end
