# Introduction
Welcome to my super-simple temperature forecast app! Here's how it works: enter any valid UK postcode, along with two temperatures you consider "hot" and "cold", and the app will return a real-time temperature update for that area according to your input (if the max temperature for the area is below what you consider "cold", then the app will return "cold", and so on).

# Ruby versions
ruby '3.0.3'
rails '7.0.3'

# Installation
- Pull the project from this public repository.
- Open it in your text editor.
- Run 'bundle install' in your terminal to install the necessary gems and dependencies.
- Run 'rails db:create db:migrate' in your terminal to set up the database.
- Finally, run 'rails server' in your terminal and navigate to 'localhost:3000' in your web browser to start using the app!

NB: You will need to plug in own API key for the app to work; such a key can be obtained for free from https://www.weatherapi.com/ (read their documentation for more info).
The key should be stored in a .env file which itself should be listed within your .gitignore file so as to keep it private.

# Testing
System tests have been written using Minitest which can be found in 'test/system/forecasts_test.rb', and run with 'rails test:system'.

Unit tests have also been written using both Minitest and RSpec, which can be run with 'rails test:models' and 'rspec spec/models', respectively. The former can be found in 'test/models/forecast_test.rb', and the latter in 'spec/models/forecast_spec.rb'.

I did attempt to implement continuous integration but the process kept getting stuck at the point during which Chrome is launched within the virtual machine. I tried changing the VM browser to Firefox to no avail. I googled the error and found various suggestions that involved configuring the VM Chrome with '--no-sandbox', however these suggestions also warned that this workaround could pose a security risk, and so I decided to comment out the integration tests until I could get some feedback on the situation.
Error: Chrome failed to start: exited abnormally Selenium::WebDriver::Error::UnknownError)
(unknown error: DevToolsActivePort file doesn't exist)

Other than that, happy forecasting! ☀️
