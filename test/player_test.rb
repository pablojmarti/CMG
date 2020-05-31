require 'test_helper'

describe "CMG::Player" do
  before do
    name = "John Doe"
    @player_1 = CMG::Player.new(name)
  end

  describe "When a player gets created" do
    it "must have player name" do
      assert_equal "John Doe", @player_1.name
    end

    it "ensure name is string" do
      assert_kind_of String, @player_1.name
    end

    it "cannot be created without a name" do
      assert CMG::Player.new(nil).invalid?
    end

    it "must initialize points to zero" do
      assert @player_1.points.has_value?(0)
    end

    it "must ensure points are a hash" do
      assert_kind_of Hash, @player_1.points
    end
  end
end
