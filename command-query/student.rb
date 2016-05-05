class Student
  attr_reader :grade,
              :grades
  def initialize
    @grades = ["A", "B", "C", "D", "F"]
    @grade =@grades[2]
  end

  def study
    index = @grades.index(@grade)
    if index == 0
      index = 0
    else
      @grade =@grades[index - 1]
    end
  end

  def slack_off
    index = @grades.index(@grade)
    if index == 4
      index = 4
    else
      @grade =@grades[index + 1]
    end
  end
end
