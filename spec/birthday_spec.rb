require 'birthday'

describe Birthday do

  subject(:birthday) { described_class.new("Jack", "6", "8") }

  describe '#initialize' do
    it 'knows the name of whose birthday is saved' do
      expect(subject.name).to eq "Jack"
    end

    it 'knows what day its birthday is on' do
      expect(subject.day).to eq "6"
    end

    it 'knows what month its birthday is on' do
      expect(subject.month).to eq "8"
    end
    
  end
end