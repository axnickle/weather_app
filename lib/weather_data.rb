module WeatherData
  def data
    @data = JSON.parse @response.body
  end
end
