require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Cms
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.time_zone = "Eastern Time (US & Canada)"

    config.assets.enabled = false

    config.generators do |g|
      g.test_framework :rspec,
      :fixtures => true,
      :view_specs => true,
      :helper_specs => true,
      :routing_specs => true,
      :controller_specs => true,
      :request_specs => true
      g.fixture_replacement :factory_girl, :dir => "spec/factories"
   end

   config.rakismet.key = '996903959b05'
   config.rakismet.url = 'http://www.thelinuxgeek.org/'
  end
end
