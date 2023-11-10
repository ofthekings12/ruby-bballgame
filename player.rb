class Player
  #getters
  attr_reader :name #:score

  #setters
  # attr_writer :score

  #both getter and settter
  attr_accessor :score


  def initialize(name)
    #instance variables
    @name = name
    @score = 0
  end

  #getter to access the properties of the class
  ## this is the long way of declaring variables
  # def name
  #   @name
  # end

  # def score
  #   @score
  # end

  # #setter
  # def score=(points)
  #   @score += points
  # end

end