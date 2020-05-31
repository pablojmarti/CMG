require 'test_helper'

describe "CMG::Player" do
  it "has player name" do
    name = "John Doe"
    CMG::Player.new(name)
    _(CMG::Player.name).must_equal name
  end
end
