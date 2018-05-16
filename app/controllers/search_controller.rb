class SearchController < ApplicationController
  def index
    binding.pry
    render locals: { stations: StationFinder.new(params[:q]).stations }
  end
end

