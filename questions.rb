class Question

  attr_reader :question_string, :solution

  def initialize(name)
    @number1 = generate_random_number(10)
    @number2 = generate_random_number(10)
    @operation = get_operation()
    @question_string = "#{name}: What is #{@number1} #{@operation} #{@number2}?"
    @solution = do_calculation()
  end

  def generate_random_number(maxValue)
    rand(1..maxValue)
  end

  def get_operation()
    operation_int = generate_random_number(3)
    if operation_int == 1
      return '+'
    elsif operation_int == 2
      return '-'
    else
      return '*'
    end
  end

  def do_calculation()
    return @number1.send(@operation,@number2)
  end

end