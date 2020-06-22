class SearchController < ApplicationController

  def index
    if params['location']
      coordinates = Geocoder.search(params['location']).first.coordinates
      @response = Openweather::Search.one_call(coordinates)
    end
  end
end
