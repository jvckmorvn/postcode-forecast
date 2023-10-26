## Introduction
Welcome to my super-simple postcode forecast app! Here's how it works: enter any valid UK postcode, along with two temperatures you consider 'hot' and 'cold', and the app will return a real-time temperature update for that area according to your input (if the max temperature for the forecast is below what you consider 'cold', then the app will return 'cold', and vice versa).

## Ruby versions
- Ruby '3.0.3'
- Rails '7.0.3'

## Installation
- Pull the project from this public repository.
- Run `bundle install` in your terminal to install the necessary gems and dependencies.
- Run `rails db:create db:migrate` in your terminal to set up the database.
- Finally, run `rails server` and navigate to 'localhost:3000' in your web browser to start using the app!

**NB:** You will need to plug in your own API key for the app to work; such a key can be obtained for free from [Weather API](https://www.weatherapi.com/) (see their documentation for more info).
The key should be stored in a .env file which itself should be listed within your .gitignore file so as to keep it private.

## Testing
System tests have been written using Minitest which can be found in 'test/system/forecasts_test.rb', and run with `rails test:system`.

Unit tests have also been written using both Minitest and RSpec, which can be run with `rails test:models` and `rspec spec/models`, respectively. The former can be found in 'test/models/forecast_test.rb', and the latter in 'spec/models/forecast_spec.rb'.

Happy forecasting! ☀️
