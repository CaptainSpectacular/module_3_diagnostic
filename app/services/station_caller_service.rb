class StationCallerService < MasterService
  
  def initialize(zip)
    @zip = zip
    @url = "/api/alt-fuel-stations/v1/nearest?format=json&location=#{@zip}&api_key=#{ENV['API_SECRET']}"
  end

  def stations
    body = conn.get do |req|
      req.url @url
    end.body

    JSON.parse(body)
  end
end
