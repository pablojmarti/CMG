require 'test_helper'

describe "CMG" do
  it "has a version number" do
    value(::CMG::VERSION).wont_be_nil
  end
end
