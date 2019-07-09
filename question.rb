class Question

  attr_accessor :num1, :num2, :question, :answer

  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
    @question = "What does #{@num1} plus #{@num2} equal?"
    @answer = @num1 + @num2
  end

  def correct?
    @answer == gets.chomp.to_i
  end

end