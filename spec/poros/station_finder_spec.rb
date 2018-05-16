require 'rails_helper'

describe StationFinder do
  let(:finder) { described_class.new('80203') }

  it 'can be made with a zip code' do
    station = StationFinder.new('80203')

    expect(station).to be_a(StationFinder)
  end
  
  describe 'instance methods' do
    describe '#stations' do
      it 'returns an array of station objects' do
        VCR.use_cassette('stations_finder') do
          expect(finder.stations.first).to be_a(Station)
          expect(finder.stations.last).to be_a(Station)
        end 
      end
    end
  end
end
