require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EnjuLeafDocker
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = "Asia/Tokyo"
    config.i18n.available_locales = [:en, :ja]
    config.i18n.enforce_available_locales = true
    config.active_job.queue_adapter = :resque
    config.i18n.default_locale = :ja
    config.i18n.fallbacks = [I18n.default_locale]
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
