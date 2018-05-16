class SearchController < ApplicationController
  def index
    render locals: { stations: StationFinder.new(params[:q]).stations }
  end
end

