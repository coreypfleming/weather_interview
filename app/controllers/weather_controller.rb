class WeatherController < ApplicationController
  def search
  end

  def results
    @cache_exists = Rails.cache.exist?(zipcode_param)
    @weather_results = Rails.cache.fetch(zipcode_param) do
      weather_client.current_zip(zipcode_param)
    end
  end

  def zipcode_param
    params.require(:zipcode)
  end

  def weather_api_key
    Rails.application.credentials.weather_api_key
  end

  def weather_client
     @weather_client ||= OpenWeather::Client.new(
      api_key: weather_api_key,
      units: "imperial"
    )
  end
end
