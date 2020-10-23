module HomeHelper
    include WeatherData

    def hourly_convert_temp(temp)
        convert_temp(temp)
      end
end
