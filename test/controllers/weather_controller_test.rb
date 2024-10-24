require "test_helper"

class WeatherControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get weather_search_url
    assert_response :success
  end

  test "should get results" do
    get weather_results_url
    assert_response :success
  end
end
