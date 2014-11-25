require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TheLibrarian
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.i18n.default_locale = :es
    config.i18n.locale = :es

    # Adds the view folder to locales
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', 'views', '*.{rb,yml}').to_s]

    # The default scaffold generators
    config.generators do |g|
      g.view_specs false
      g.helper_specs false
      g.model_specs true
      g.controller_specs false
      g.stylesheets = false
      g.javascripts = false
      g.helper = false
      g.test_framework  :rspec, :fixture => true, :views => false
      g.integration_tool :rspec, :fixture => true, :views => true
      g.fixture_replacement :factory_girl, :dir => "spec/factories"
    end
  end
end
