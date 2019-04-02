class Student
  attr_reader :name, :age, :scores

  def initialize(hash)
    @name = hash[:name]
    @age = hash[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    total = 0
    @scores.each do |score|
      total += score
    end

    total / @scores.length.to_f
  end

end
