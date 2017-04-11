require_relative('questions.rb')

class Player

  attr_reader :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life()
    @lives = @lives - 1
  end

  def ask_question()
    question = Question.new(@name)
    puts "----- NEW TURN -----"
    puts question.question_string
    response = gets.chomp
    if response.to_s == question.solution.to_s
      puts "CORRECT!"
    else
      lose_life()
      puts "WRONG!!!"
    end
  end
end
