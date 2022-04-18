class Game
  def initialize(name)
    @name = name
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
  end

  def start 
    puts "New Game #{@player_1.name} and #{@player_2.name}"
    self.turn
  end

  def result 
    puts "Player 1: #{@player_1.lives}/3 lives left vs Player 2: #{@player_2.lives}/3 lives left"
  end

  def turn 
    @player_1.new_question
    self.score
    @player_2.new_question
    self.score
    self.result
    puts "--- New Turn ---"
    self.turn
  end

  def score
    if @player_1.lost 
      winner(@player_2)
    elsif @player_2.lost
      winner(@player_1)
    end
  end
  
  def winner(name, lives)
    puts "#{name} is the winner with a score of #{lives}/3"
    exit(0)
  end
end