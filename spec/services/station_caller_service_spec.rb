require 'rails_helper'

describe StationCallerService do
  describe 'creation' do
    it 'has a zip' do
      service = StationCallerService.new('80203')
      
      expect(service).to be_a(StationCallerService)
    end
  end

  describe 'instance methods' do
    let(:service) { described_class.new('80203') }
    
    describe '#stations' do
      it 'makes an api call' do
        VCR.use_cassette('station_caller') do
          expect(service.stations).to be_an(Array)
          expect(service.stations.first).to be_a(Station)
        end
      end
    end
  end
end
