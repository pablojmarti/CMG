require 'test_helper'

describe "CMG::Player" do
  before do
    # seed random to generate same random set of resources each time
    srand(1234)
    name = "John Doe"
    @player_1 = CMG::Player.new(name)
    @resource = :clay
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

    it "must have resources" do
      assert @player_1.resources.present?
    end

    it "must generate random resources for the player" do
      resources = { :iron=>3, :wood=>4, :food=>4, :water=>0, :clay=>1 }
      assert_equal resources, @player_1.resources
    end

    it "must generate two different random resources on each initialization" do
      refute_equal @player_1.resources, CMG::Player.new("Jane Doe").resources
    end
  end

  describe "When a player triggers a resource gathering event" do

    it "must increase the players resources by the value recieved" do
      @player_1.update_resources(@resource, 5)
      assert_equal 6, @player_1.resources[@resource]
    end

    it "must not increase the players resources above 99" do
      @player_1.update_resources(@resource, 99)
      assert @player_1.resources[@resource] <= 99
    end
  end

  describe "When a player triggers a resource expenditure event" do

    it "must descrease the players resources by the value given" do
      @player_1.update_resources(@resource, -1)
      assert_equal 0, @player_1.resources[@resource]
    end

    it "must not decrease below zero" do
      @player_1.update_resources(@resource, -3)
      assert @player_1.resources[@resource] >= 0
    end
  end

  describe "When a player scores a point" do

    it "must increase the respective point by 1" do
      init_value = @player_1.points[:power]
      @player_1.points[:power] += 1
      assert_equal @player_1.points[:power], init_value + 1
    end
  end
end
