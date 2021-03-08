require 'scorecard'

describe Scorecard do
  describe '.frame' do
    it 'combines the two scores given in a frame if they total < 10' do
      expect(subject.frame(0, 0)).to eq(0)
      expect(subject.frame(2, 5)).to eq(7)
      expect(subject.frame(4, 5)).to eq(9)
    end

    it 'if the frame is scored as a spare, no score is given until the next roll is inputted' do
      expect(subject.frame(9, 1)).to eq(nil) until

    end

  end
end
