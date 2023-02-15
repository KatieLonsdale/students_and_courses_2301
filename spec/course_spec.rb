require 'spec_helper'

RSpec.describe Course do
  before(:each) do
    @course = Course.new("Calculus", 2) 
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
      expect(course.full?).to be false
    end
  end
end