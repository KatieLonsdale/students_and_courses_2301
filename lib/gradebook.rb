class Gradebook
  attr_reader :instructor,
              :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    roster = Hash.new
    @courses.each{|course| roster[course] = course.students}
    roster
  end

  def students_below(threshold)
    list_all_students.map{|course, students| students.
    select{|student| student.grade < threshold}}.uniq[0]
  end
end
