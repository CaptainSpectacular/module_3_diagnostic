class MasterService
  
  def conn
   Faraday.new('https://developer.nrel.gov/docs/transportation/alt-fuel-stations-v1/nearest/')
  end

end
