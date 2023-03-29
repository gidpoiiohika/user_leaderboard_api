require_relative "boot"

require "rails/all"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module UserLeaderboardApi
  class Application < Rails::Application
    config.load_defaults 7.0
    
    config.middleware.use Rack::MethodOverride
    config.middleware.use ActionDispatch::Flash
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore
  end
end
