class StationCallerService < MasterService
  
  def initialize(zip)
    @zip = zip
    @url = "/api/alt-fuel-stations/v1/nearest.json?location=#{@zip}&api_key=#{ENV['API_SECRET']}&radius=6&limit=10"
  end

  def stations
    body = conn.get do |req|
      req.url @url
    end.body

    JSON.parse(body)
  end
end
