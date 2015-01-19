require 'test_helper'
require_relative '../lib/snake/writer'
require_relative '../lib/snake/parser'

class BothTest < ActiveSupport::TestCase
  def test_parser_and_writer
    vars = Snake::Parser.parse(File.join(File.dirname(__FILE__), ("test_json/test.json")))
    Snake::Writer.write(vars)

    File.open(File.join(File.dirname(__FILE__), "dummy/app/assets/stylesheets/_snake_vars.css.scss")) do |f|
      total_lines_changed = 0
      f.each_line { total_lines_changed += 1 }
      assert_equal total_lines_changed, 11
    end
  end
end
