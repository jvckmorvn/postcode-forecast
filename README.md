Welcome to my super-simple weather forecast app! Here's how it works: enter any valid UK postcode, along with two temperatures you consider "hot" and "cold", and the app will return a real-time temperature update for that area according to your input. (If the max predicted temperature for the area is below what you consider "cold", then the app will return "cold", and so on).

Things you may want to cover:

## Ruby versions
ruby '3.0.3'
rails '7.0.3'

## Installation
- Pull the project from this public repository
- Open it in your text editor
- Run 'bundle install' in your terminal to install the necessary gems
- Run 'rails db:create db:migrate' in your terminal to set up the database
- Finally, run 'rails server' in your terminal and navigate to 'localhost:3000' in your web browser to start using the app!
