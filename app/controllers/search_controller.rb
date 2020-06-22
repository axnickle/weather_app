class SearchController < ApplicationController
  include WeatherData

  def index
    if params['location']
      coordinates = Geocoder.search(params['location']).first.coordinates
      @response = Openweather::Search.one_call(coordinates)
      @current = current_time_data
    end
  end
end
