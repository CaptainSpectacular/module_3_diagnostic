class StationCallerService < MasterService
  
  def initialize(zip)
    @zip = zip
  end

  def stations
    conn.get do |req|
      req.url "/api/alt-fuel-stations/v1/nearest?location=#{@zip}&api_key=#{ENV['API_SECRET']}"
    end
  end
end
