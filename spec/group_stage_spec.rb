require '../lib/turniere/group_stage'

RSpec.describe Turniere do
  it "calculates the right matchnumber" do
    expect(Turniere::GroupStage.calculate_required_stage_count(23)).to eq(4)
  end
end
