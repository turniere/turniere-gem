RSpec.describe Turniere::Utils do
  [
    { test: 5, result: 4 },
    { test: 3, result: 2 },
    { test: 13, result: 8 },
    { test: 35, result: 32 },
    { test: 32, result: 32 },
    { test: 0, result: 0 },
    { test: 3482, result: 2048 },
    { test: 1337, result: 1024 }
  ].each do |parameters|
    it "calculates #{parameters[:result]} as previous power of two from #{parameters[:test]}" do
      expect(Turniere::Utils.previous_power_of_two(parameters[:test])).to eq(parameters[:result])
    end
  end
end
