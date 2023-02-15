require 'spec_helper'

RSpec.describe Student do
  describe '#initialize' do
    it 'exists' do
      student = Student.new({name: "Morgan", age: 21})

      expect(student).to be_instance_of(Student)
    end
  end
end