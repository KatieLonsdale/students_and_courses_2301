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
end