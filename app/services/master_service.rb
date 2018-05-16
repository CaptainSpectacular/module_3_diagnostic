class MasterService
  
  def conn
   Faraday.new('https://developer.nrel.gov')
  end

  def raw_response(url)
    conn.get do |req|
      req.url url
    end.body
  end

end
