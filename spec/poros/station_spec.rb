describe Station do
  let(:attrs) {{ station_name: 'PHQ',
                 street_address: 'some sandy place',
                 fuel_type_code: 'not gas',
                 distance: '234',
                 access_days_time: '12'}}

  it 'can be made' do
    station = Station.new(attrs)

    expect(station).to be_a(Station)
  end

  it 'has attributes' do
    station = Station.new(attrs)

    expect(station.name).to eq('PHQ')
    expect(station.address).to eq('some sandy place')
    expect(station.fuel_types).to eq('not gas')
    expect(station.distance).to eq(234)
    expect(station.access_times).to eq('12')
  end
end
