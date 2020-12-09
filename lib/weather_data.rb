module WeatherData
  def data
    @data = JSON.parse @response.body
  end

  def current_data  # may want to update name to 'current' to match JSON
    data['current'] # [] syntax works for hashes and arrays; hash has string keys
  end               # {'current' => 35}, we're pulling out the value for 'current'

  def hourly_temp
    data['hourly']
  end 

  def day_temp
    data['day']
  end

  def daily
    data['daily']
  end

  def current_time_data
    icon = (current_data['weather'].first)['icon']
    {'current_temp' => current_temp, 'description' => weather_description, 'icon' => weather_icon(icon) }
  end

  def current_temp 
    (((current_data['temp'].to_d) - 273.15) * 9/5 + 32).to_i
  end

  def convert_temp(temp)
    (((temp.to_d) - 273.15) * 9/5 + 32).to_i
  end

  def max
    convert_temp(daily[0]['temp']['max']) # accessing value from temp hash; access max hash
  end

  def min
    convert_temp(daily[0]['temp']['min'])
  end

  def weather_description
    (current_data['weather'].first)['description'] # .first  is the same as [0]
  end

  def weather_icon(icon)
    "http://openweathermap.org/img/w/#{icon}.png"
  end
end

# last line in ruby get returned
# Rails.logger.error("******** #{current_data['temp'].to_d}")
