require 'test_helper'
require_relative '../lib/snake/writer'

class WriterTest < ActiveSupport::TestCase
  def test_write_file
    Snake::Writer.write({"var1" => "val1", "var2" => "val2"})
    assert_equal File.exists?(File.join(Rails.root, "test/dummy/app/assets/stylesheets/_snake_vars.css.scss")), true
  end

  def test_written_file_is_correct
    values_hash = {"var1" => "val1", "var2" => "val2"}
    values_arr = values_hash.to_a.map { |el| "$#{el[0]} : #{el[1]};\n"}

    Snake::Writer.write(values_hash)
    
    File.open(File.join(Rails.root, "test/dummy/app/assets/stylesheets/_snake_vars.css.scss")) do |f|
      f.each_line.with_index { |line, index| assert_equal line, values_arr[index] }
    end
  end
end
