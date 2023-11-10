require_relative './player'

class Game

  def initialize
    #data
    @player1 = Player.new("Mikko") # "@" = data associated with each instance of that class
    @player2 = Player.new("Kurtis")
    @players = [@player1, @player2].shuffle #randomizes whichplayer starts
    @round = 1

  end

  #methods => behaviours

  #main game loop
  def play

    while (@player1.score < 11 && @player2.score < 11) do

      shooting_player = @players.first
      defending_player = @players.last

      puts "--------------------"
      puts "      Round #{@round}    "
      puts "--------------------"

      puts "#{shooting_player.name} is playing against #{defending_player.name}"

      puts "#{shooting_player.name} shoots!"
      score = rand(1..2)
      puts "#{shooting_player.name} has scored #{score} points"
      shooting_player.score += score

      puts "--------------------"
      puts "      Score    "
      puts "--------------------"

      puts "Player: #{@player1.name} Score: #{@player1.score}"
      puts "Player: #{@player2.name} Score: #{@player2.score}"

      @round += 1
      #switch the player around
      @players.rotate! #bang operator = mutates the original array
      sleep 0.5 # displays each game in .5 second intervals


  end
end
end

#create the instacne of a game

game1 = Game.new
game1.play