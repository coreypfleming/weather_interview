require "test_helper"

class WeatherControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get weather_search_url
    assert_response :success
    assert @response.body.include? "Search"
  end

  test "should get results" do
    get weather_results_url, params: { zipcode: "44102" }
    assert_response :success
    assert @response.body.include? "Current Temperature"
    assert @response.body.include? "Max Temperature"
    assert @response.body.include? "Min Temperature"
    assert @response.body.include? "Zipcode"
    assert @response.body.include? "Cached Results"
    assert @response.body.include? "Search"
    assert_not @response.body.include? "Sorry"
  end

  test "should handle invalid zipcode" do
    get weather_results_url, params: { zipcode: "aaaaa" }
    assert_response :success
    assert @response.body.include? "Sorry"
    assert_not @response.body.include? "Current Temperature"
    assert_not @response.body.include? "Max Temperature"
    assert_not @response.body.include? "Min Temperature"
    assert_not @response.body.include? "Cached Results"
    assert @response.body.include? "Search"
  end
end
