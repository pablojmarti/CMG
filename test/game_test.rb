require 'test_helper'

describe "CMG::Game" do
  describe "When A Game Gets initialized" do
    it "must create a player object" do
      @game = CMG::Game.new("John Doe")
      assert_kind_of CMG::Player, @game.player
    end
  end
end
