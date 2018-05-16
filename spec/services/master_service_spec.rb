require 'rails_helper'

describe MasterService do
  let(:service) { described_class.new }
  describe 'instance methods' do
    it '#conn' do
      expect(service.conn).to be_a(Faraday::Connection)
      expect(service.conn.url_prefix.to_s).to match('https://developer.nrel.gov')
    end
  end
end
