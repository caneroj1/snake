require 'test_helper'
require_relative '../lib/snake/parser'

class ParserTest < ActiveSupport::TestCase
  def test_get_new_variables
    assert_equal Snake::Parser.send(:get_new_variables, File.join(File.dirname(__FILE__), ("test_json/test.json"))).class, Hash
  end

  def test_get_default_variables
    assert_equal Snake::Parser.send(:get_default_variables).class, Hash
  end

  def test_compare_with_same_hashes
    hash_one = { "var1" => "val1" }
    hash_two = { "var1" => "val1" }

    assert_equal Snake::Parser.send(:compare, hash_one, hash_two), {}
  end

  def test_compare_with_totally_different_hashes
    hash_one = { "var1" => "val1" }
    hash_two = { "var2" => "val3" }

    assert_equal Snake::Parser.send(:compare, hash_one, hash_two), hash_one
  end

  def test_compare_with_changed_hashes
    hash_one = { "var1" => "val2" }
    hash_two = { "var1" => "val1" }

    assert_equal Snake::Parser.send(:compare, hash_one, hash_two), hash_one
  end

  def test_compare_with_realistic_hashes
    hash_one = { "var1" => "val1", "var2" => "val2", "var3" => "val3" }
    hash_two = { "var1" => "val1", "var2" => "val3", "var3" => "val3" }

    assert_equal Snake::Parser.send(:compare, hash_one, hash_two), { "var2" => "val2" }
  end

  def test_parse
    assert_equal Snake::Parser.parse(File.join(File.dirname(__FILE__), ("test_json/test.json"))).class, Hash
  end
end
