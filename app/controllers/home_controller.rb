class HomeController < ApplicationController
  include WeatherData

  def index
    #if params['location']
      coordinates = Geocoder.search('Columbus, Ohio').first.coordinates
      @response = Openweather::Search.one_call(coordinates)
      @current = current_time_data
      @daily_temp = daily_temp
      @max = max
      @min = min
      @hourly_temp = hourly_temp
    #end
  end
end

# OpenWeather::Home - OpenWeather is a module in Services folder