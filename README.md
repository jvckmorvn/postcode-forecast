## Introduction
Welcome to my super-simple postcode forecast app! Here's how it works: enter any valid UK postcode, along with two temperatures you consider 'hot' and 'cold', and the app will return a real-time temperature update for that area according to your input (if the max temperature for the area is below what you consider 'cold', then the app will return 'cold', and so on).

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

I did attempt to implement continuous integration, but the tests kept getting stuck at the point during which Chrome is launched within the virtual machine. I tried changing the VM browser to Firefox to no avail. I googled the error and found various suggestions that involved configuring the VM Chrome with `--no-sandbox`, however these suggestions also warned that this configuration was 'unsupported and highly discouraged', and so I decided to comment out the integration tests until I could get some feedback on the situation. The tests themselves run and pass locally without any issues:
```
Selenium::WebDriver::Error::UnknownError: unknown error: Chrome failed to start: exited abnormally.
(unknown error: DevToolsActivePort file doesn't exist)
(The process started from chrome location /usr/bin/google-chrome is no longer running, so ChromeDriver is assuming that Chrome has crashed.)
```
All that being said, happy forecasting! ☀️
