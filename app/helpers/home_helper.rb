module HomeHelper
    include WeatherData

    def hourly_convert_temp(temp)
        convert_temp(temp)
    end

    def weather_icon(icon)
      "http://openweathermap.org/img/w/#{icon}.png"
    end
end
