class Student
  attr_reader :name, 
              :age,
              :scores

  def initialize(info)
    @name = info[:name]
    @age = info[:age]
    @scores = []
  end
end
