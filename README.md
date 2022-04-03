# Rock, Paper, Scissors

This is a Rock, Paper, Scissors game that can be can played solo on the web using the computer as an opponent. Implementation of the user stories below has been test driven using a Behaviour Driven Development cycle - feature tests are written using Capybara and unit tests are written in raw RSpec - test coverage is 100%. The app has been set up to use Sinatra's Modular Style.

Game logic has been executed in the lib files. The controller's responsibility is to pass the player's weapon to the game and get the result. Instance variables convert this result for rendering in the view. This ensures proper separation of concerns and keeps the controller 'skinny'.

## User Stories
```
As a player
So that I can see my name in lights
I would like to register my name before playing an online game

As a player
So that I can play the game
I would like to be presented with the weapon choices (rock, paper, scissors)

As a player
So that I can play the game
I would like to choose a weapon

As a player
So that I can play the game against an opponent
I would like the computer to choose a weapon

As a player
So that I can see who is the better player
I would like a winner to be declared
```

### Home
![Screenshot](https://i.imgur.com/R3wO42G.png?1)

### Play
![Screenshot](https://i.imgur.com/QaSVZHp.png?1)

### Result
![Screenshot](https://i.imgur.com/zoP7wUF.png?2)

## How to setup

Clone the repo to your local machine, change into the directory and install the needed gems:
```
$ bundle install
```

Run the app using rackup:
```
$ rackup
```
Visit http://localhost:9292/ and follow the instructions on screen.

To run the test suite:
```
$ rspec
```

## Technologies Used

* Capybara
* HTML
* RSpec
* Ruby
* Simplecov
* Sinatra
