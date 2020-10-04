class HomeController < ApplicationController
  include WeatherData

  def index
    #if params['location']
      coordinates = Geocoder.search('Columbus, Ohio').first.coordinates
      @response = Openweather::Search.one_call(coordinates)
      @current = current_time_data
      @current_data = daily_temp
      @max = max
      @min = min
    #end
  end
end

# OpenWeather::Home - OpenWeather is a module in Services folder