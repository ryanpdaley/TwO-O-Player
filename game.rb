require_relative('questions.rb')

class Game
  def initialize()
    @p1 = Player.new('Player 1')
    @p2 = Player.new('Player 2')
  end

  def play()
    notDead = true;
    turn = 1;

    while notDead
      if (turn % 2 == 0)
        @p2.ask_question()
      else
        @p1.ask_question()
      end
      puts "#{@p1.name}: #{@p1.lives}/3 vs #{@p2.name}: #{@p2.lives}/3"
      if @p1.lives < 1 || @p2.lives < 1
        notDead = false
        puts '----- GAME OVER -----'
        if @p1.lives < 1
          puts "#{@p2.name} wins with a score of #{@p2.lives}/3"
        else
          puts "#{@p1.name} wins with a score of #{@p1.lives}/3"
        end
      end
      turn += 1
    end
  end
end