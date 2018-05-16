require 'rails_helper'

describe 'a user visits the root' do
  context 'and fill in form with 80203' do
    context 'clicks on Locate' do

      before(:each) do
        visit root_path
        fill_in 'search', with: '80203'
        click_on 'Locate'
      end

      it 'should be on /search' do
        expect(current_path).to eq('/search')
      end

      it 'should see list of 10 closest stations within 6 miles sorted by distance' do
        expect(page).to have_css('.stations', count: 10)
      end

      it 'should filter by electric and propane stations' do
        #iterate through all stations on page and expect propane and electric
      end

      it 'should show station attributes' do
        within '.station' do
          expect(page).to have_content('Name')
          expect(page).to have_content('Address')
          expect(page).to have_content('Fuel Types')
          expect(page).to have_content('Distance')
          expect(page).to have_content('Access Times')
        end
      end
    end
  end
end
