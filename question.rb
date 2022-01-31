class Question 

  attr_accessor : answer, :question

  def initialize
    @num1 = rand(1..20) #generate random numbers
    @num2 = rand(1..20) #generate random numbers
    @answer = self.num1 + self.num2
    @question = "What does #{self.num1} + #{self.num2} equal?"

  end

end