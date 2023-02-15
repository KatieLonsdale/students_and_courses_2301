require 'spec_helper'

RSpec.describe Course do
  before(:each) do
  end

  describe '#initialize' do
    it 'exists' do
      course = Course.new("Calculus", 2) 

      expect(course).to be_instance_of(Course)
    end
  end
end