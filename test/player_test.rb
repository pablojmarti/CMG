require 'test_helper'

describe "Player" do
  it "has player name" do
    name = "John Doe"
    CMG::Player.new(name)
    CMG::Player.name.must_equal name
  end
end
