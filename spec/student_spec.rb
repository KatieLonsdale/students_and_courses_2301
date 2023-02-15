require 'spec_helper'

RSpec.describe Student do
  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end

  describe '#initialize' do
    it 'exists' do
      expect(@student).to be_instance_of(Student)
    end

    it 'has a name' do
      expect(@student.name).to eq('Morgan')
    end

    it 'has an age' do
      expect(@student.age).to eq 21
    end

    it 'has no scores by default' do
      expect(@student.scores).to eq([])
    end
  end

  describe '#log_score' do
    it 'adds scores to scores attribte' do
      @student.log_score(89)
      @student.log_score(78)

      expect(@student.scores).to eq ([89,78])
    end
  end

  describe '#grade' do
    it 'returns average score' do
      @student.log_score(89)
      @student.log_score(78)

      expect(@student.grade).to eq 83.5
    end
  end
end