module Openweather
  class Search
    def self.by_location(location) # line 4 Faraday provides connections to the internet- get request
      Faraday.get 'https://api.openweathermap.org/data/2.5/weather?q=' + location + '&appid=' + ENV['API_KEY']
    end
    
    def self.five_day_forecast_by_location(location)
      Faraday.get 'https://api.openweathermap.org/data/2.5/forecast?q=' + location + '&appid=' + ENV['API_KEY']
    end

    def self.one_call(coordinates)
      Faraday.get "https://api.openweathermap.org/data/2.5/onecall?lat=#{coordinates.first}&lon=#{coordinates.last}&exclude=minutely&appid=#{ENV['API_KEY']}"
    end
  end
end

# We can replace ENV['API_KEY'] but not a good idea
  # in this case, we place API key as an Environment variable
