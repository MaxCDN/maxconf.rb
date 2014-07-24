require 'minitest/autorun'
require './lib/maxconf'

class TestMaxConf < MiniTest::Unit::TestCase
  def test_with_file_string
    c = MaxConf.load("./sample.maxcdn.yml")
    assert_equal "YOUR_ALIAS", c["alias"]
  end

  def test_with_options_hash
    opts = {
      "file" => "./sample.maxcdn.yml",
      "alias" => "ALIAS_OVERIDE"
    }
    c = MaxConf.load(opts)
    assert_equal "ALIAS_OVERIDE", c["alias"]
  end
end

