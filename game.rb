class Game
  def initialize
    puts "enter the first player's name"
    player_id = ask_input
    @player1 = Player.new "#{player_id}"

    puts "enter the second player's name"
    player_id = ask_input
    @player2 = Player.new "#{player_id}"

    @winner = false
    @current_player = @player1
  end

  def play
    while !@winner
      puts "--------------------------- TURN ------------------------"

      question = Question.new 
      puts "#{@current_player}: #{question.prompt}"
      answer = ask_input

      if question.correct?(answer)
        puts "#{@current_player}: Nice! You're correct"
      else
        puts "#{@current_player}: Sorry bud... try again, wrong answer"
        @current_player.lose_life
      end

      puts "#{@player1}: #{@player1.lives}/3 vs #{@player2}: #{@player2.lives}/3"
      change_player
      winner?
    end 
  end_game
  end

  def change_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def winner?
    if @player1.died?
      @winner = @player2
    elsif @player2.died?
      @winner = @player1
    end
  end

  def end_game
    if @player1.died? || @player2.died?
      puts "#{@winner} wins with a score of #{@winner.lives}/3"
      puts "---------- GAME IS NOW OVER------------"
      end
    end
  end

def ask_input
  print ">>>>"
  input = gets.chomp
end

