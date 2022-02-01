#questions and logic pertaining to questions class
class Question 

  attr_accessor :answer, :question

  def initialize
    @num1 = rand(1..20) #generate random numbers
    @num2 = rand(1..20) #generate random numbers
    @answer = @num1 + @num2
  end

  def prompt
    @question = "What does #{@num1} + #{@num2} equal?"
  end

  def correct?(player_answer)
    if player_answer.to_i == @answer
      true
    else
      false
    end
  end
end