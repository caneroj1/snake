module Snake
  require "json"
  require "thor"

  include Thor::Actions

  TEST_PATH   = "test/dummy/app/assets/stylesheets/_snake_vars.css.scss"
  APP_PATH    = "app/assets/stylesheets/_snake_vars.css.scss"
  JSON_PATH   = "app/assets/json/config.json"
  STYLES_PATH = "app/assets/stylesheets/application.css.scss"

  require_relative './snake/parser'
  require_relative './snake/writer'
end
