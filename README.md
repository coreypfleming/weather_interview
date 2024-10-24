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

Sign up for an account and retrieve an API key from OpenWeather at https://home.openweathermap.org/users/sign_in


Add your weather api key via credentials using the name  `weather_api_key`, e.g. `weather_api_key: 1234567...`

````
editor=nano rails credentials:edit
````

Run Tests
```
rails test test/
```

Strategy

The requirements requested an input address, however, to reduce complexity at this time I opted to only request the zipcode from the user since this directly can interface with the weather APIs and allows us to avoid complexity by either parsing the zipcode from a full-address string, or doing forward-location geocoding. 


Improvements:
1. In the short term, I'd like to improve the tests so that they are more idiomatic in following the minitest style guide. Long term I would upgrade to using rspec.
2. Improve UI to present something more graphically friendly that reflects the results being returned, like for example the graphics and perhaps format of the weatherstar 4k emulators: https://battaglia.ddns.net/twc/

