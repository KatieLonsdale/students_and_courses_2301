require 'spec_helper'

RSpec.describe Course do
  before(:each) do
    @course = Course.new("Calculus", 2) 
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})  
  end

  describe '#initialize' do
    it 'exists' do
      expect(@course).to be_instance_of(Course)
    end

    it 'has a name' do
      expect(@course.name).to eq('Calculus')
    end

    it 'has a capacity' do
      expect(@course.capacity).to eq 2
    end

    it 'has no students by default' do
      expect(@course.students).to eq([])
    end
  end

  describe '#full?' do
    it 'returns whether a course is full or not' do
      expect(@course.full?).to be false
    end
  end

  describe '#enroll' do
    it 'adds student to students attribute' do
      @course.enroll(@student1)
      @course.enroll(@student2)

      expect(@course.students.count).to eq 2
      expect(@course.students).to eq([@student1, @student2])
    end
  end
end