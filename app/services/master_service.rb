class MasterService
  
  def conn
   Faraday.new('https://developer.nrel.gov')
  end

end
