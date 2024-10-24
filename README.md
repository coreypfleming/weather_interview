# README

Ruby Version: 3.3.0
Rails Version: 7.2.1

## Getting Started

Pull down the repo locally and run bundle install 

````
git clone git@github.com:coreypfleming/weather_interview.git
cd weather_interview/ 
bundle install
````

### Weather API Key
Sign up for an account and retrieve an API key from OpenWeather at https://home.openweathermap.org/users/sign_in

Add your weather api key via credentials using the name  `weather_api_key`, e.g. `weather_api_key: 1234567...`

````
editor=nano rails credentials:edit
````

### Launch server

````
rails server
````
The app can now be visited locally by visiting http://localhost:3000

### Run Tests
```
rails test test/
```

### Strategy and Editorial

The requirements requested an input address, however, to reduce complexity at this time I opted to only request the zipcode from the user since this can directly interface with the weather API and allows us to avoid complexity and response time by either parsing the zipcode from a full-address string, or doing forward-location geocoding which would involve another API service call.

The critical pieces of code for this application live in `app/controllers/weather_controller.rb` and `app/views/weather/`.


### Improvements:
1. In the short term, I'd like to improve the tests so that they are more idiomatic in following the minitest style guide. Long term I would upgrade to using rspec.
2. Improve UI to present something more graphically friendly that reflects the results being returned, like for example the graphics and perhaps format of the WeatherStar 4k emulators: https://battaglia.ddns.net/twc/

