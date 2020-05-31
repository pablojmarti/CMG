require "minitest/autorun"

require "CMG"

class UrlTest < Minitest::Test
  def test_url
    assert_equal "http://howistart.org/posts/ruby/1", CMG::Url
  end
end
