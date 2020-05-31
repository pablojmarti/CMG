require 'test_helper'

describe "CMG::Player" do
  it "has player name" do
    name = "John Doe"
    player_1 = CMG::Player.new(name)
    _(player_1.name).must_equal name
  end
end
