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

  describe '#date' do
    it 'returns the day and month of the birthday as "month/day"' do
      expect(subject.date).to eq "8/6"
    end
  end

  describe '#days_until' do
    it 'calculates and returns the days until the given birthday' do
      expect(subject.days_until).to eq ((Date.parse(subject.date)-Date.parse(Date.today.to_s)).to_s.split("/")[0].to_i)
    end
  end
end