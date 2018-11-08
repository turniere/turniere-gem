RSpec.describe Turniere::GroupStage do
  [
    { test: 23, result: 4 },
    { test: 4, result: 2 },
    { test: 378, result: 8 },
    { test: 64, result: 6 },
    { test: 2, result: 1 },
    { test: 4711, result: 12 },
    { test: 815, result: 9 },
    { test: 12, result: 3 }
  ].each do |parameters|
    it "calculates #{parameters[:result]} playoff stages for #{parameters[:test]} teams" do
      expect(Turniere::GroupStage.calculate_required_stage_count(parameters[:test])).to eq(parameters[:result])
    end
  end
end
