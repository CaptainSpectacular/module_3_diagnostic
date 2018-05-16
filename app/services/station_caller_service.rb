class StationCallerService < MasterService
  
  def initialize(zip)
    @zip = zip
  end

  def stations
    binding.pry
  end
end
