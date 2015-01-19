class ParseGenerator < Rails::Generators::Base
  require_relative '../../snake.rb'
  require 'rails/generators'
  
  def parse
    vars = Snake::Parser.parse(File.join(Rails.root, JSON_PATH))
    Snake::Writer.write(vars)
    inject_into_file File.join(Rails.root, STYLES_PATH), after: '@import "bootstrap-sprockets";' do
      <<-INSERT
      @import "snake_vars";
      INSERT
    end
  end
end
