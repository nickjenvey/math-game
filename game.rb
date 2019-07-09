class Game

  attr_accessor :players

  def initialize
    @players = [
      Player.new('Player 1'),
      Player.new('Player 2')
    ]
  end

  def new_turn
    puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
    puts "----------------------------------------"
    puts "--------------- NEW TURN ---------------"
    puts "----------------------------------------"
  end

  def new_question(player)
    current_question = Question.new
    puts "#{player.name}: " + current_question.question
    if current_question.correct?
      puts "#{player.name}: YES! You are correct!"
    else
      puts "#{player.name}: Seriously? NO!"
      player.lives -= 1
    end
  end

  def end_game
    p1 = players[0]
    p2 = players[1]
    if p1.lives == 0 && p2.lives == 0
      puts "Tie game! Both #{p1.name} and #{p2.name} are big fat losers"
      end_game_message
    elsif p1.lives == 0
      puts "#{p2.name} wins with a score of #{p2.lives}/3" 
      end_game_message
    elsif player2.lives == 0
      puts "#{p1.name} wins with a score of #{p1.lives}/3" 
      end_game_message
    end
  end

  def end_game_message
    puts "----------------------------------------"
    puts "--------------- GAME OVER --------------"
    puts "--------------- GOOD BYE! --------------"
    puts "----------------------------------------"
  end

  def play_game
    p1 = players[0]
    p2 = players[1]
    puts "----------------------------------------"
    puts "--------- WELCOME TO MATH GAME ---------"
    puts "----------------------------------------"
    until p1.lives == 0 || p2.lives == 0
      @players.each { |player| 
        new_turn
        new_question player
      }
    end
    end_game
  end

end