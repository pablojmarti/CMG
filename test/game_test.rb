require 'test_helper'

describe "CMG::Game" do
  before do
    @game = CMG::Game.new("John Doe")
  end

  describe "When A Game Gets initialized" do
    it "must create a player object" do
      assert_kind_of CMG::Player, @game.player
    end

    it "must not be created without a player" do
      assert CMG::Game.new(nil).player.invalid?
    end

    it "must create a turn counter set to 0" do
      assert_equal 0, @game.turns
    end
  end
end
