require 'spec_helper'

RSpec.describe GradeTracker do
  before(:each) do
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29}) 
    @student3 = Student.new({name: 'Katie', age: 32})
    @course1 = Course.new("Calculus", 2)
    @course2 = Course.new('Biology', 3)
    @gradebook = Gradebook.new('Professor Plum') 
    @grade_tracker = GradeTracker.new

    @course1.enroll(@student1)
    @course1.enroll(@student2)
    @course1.enroll(@student3)
    @course2.enroll(@student1)
    @course2.enroll(@student3)

    @student1.log_score(78)
    @student1.log_score(92)
    @student2.log_score(54)
    @student2.log_score(68)
    @student3.log_score(100)
    @student3.log_score(82)
  end

  describe '#initialize' do
    it 'exists' do
      expect(@grade_tracker).to be_instance_of(GradeTracker)
    end

    it 'tracks no courses by default' do
      expect(@grade_tracker.tracked_courses).to eq([])
    end
  end
end