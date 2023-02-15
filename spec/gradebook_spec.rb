require 'spec_helper'

RSpec.describe Gradebook do
  before(:each) do
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29}) 
    @course1 = Course.new("Calculus", 2)
    @course2 = Course.new('Biology', 3)
    @gradebook = Gradebook.new('Professor Plum') 
  end

  describe '#initialize' do
    it 'exists' do
      expect(@gradebook).to be_instance_of(Gradebook)
    end

    it 'has an instructor' do
      expect(@gradebook.instructor).to eq('Professor Plum')
    end

    it 'has courses' do
      expect(@gradebook.courses).to eq([])
    end
  end

  describe '#add_course' do
    it 'adds a course to course attribute' do
      @gradebook.add_course(@course1)

      expect(@gradebook.courses).to eq([@course1])
      expect(@gradebook.courses.count).to eq 1
    end
  end

  describe '#list_all_students' do
    it 'lists each course its students enrolled' do
      @course1.enroll(@student1)
      @course1.enroll(@student2)
      @course2.enroll(@student1)

      @gradebook.add_course(@course1)
      @gradebook.add_course(@course2)

      expect(@gradebook.list_all_students).to be_instance_of Hash
      expect(@gradebook.list_all_students).
      to eq({@course1: [@student1, @student2], @course2: [@student1]})
    end
  end
end