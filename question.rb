class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def ask_question(name)
    puts "#{name}: What is #{@num1} plus #{@num2} equal?"
  end

  def check_correct_answer(answer)
    @sum == input
  end
end