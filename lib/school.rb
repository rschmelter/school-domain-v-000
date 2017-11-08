
class School

  def initialize(name)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |grade, name|
      @roster[grade].sort do |a , b|
        a <=> b
      end
    end

  end

end
