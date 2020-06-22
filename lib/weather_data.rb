module WeatherData
  def data
    @data = JSON.parse @response.body
  end

  def current_data
    data['current']
  end

  def current_time_data
    {'current_temp' => convert_temp, 'description' => weather_description, 'icon' => weather_icon }
  end

  def convert_temp
    (((current_data['temp'].to_d) - 273.15) * 9/5 + 32).to_i
  end

  def weather_description
    (current_data['weather'].first)['description']
  end

  def weather_icon
    icon = (current_data['weather'].first)['icon']
    "http://openweathermap.org/img/w/#{icon}.png"
  end
end

# last line in ruby get returned
# Rails.logger.error("******** #{current_data['temp'].to_d}")
