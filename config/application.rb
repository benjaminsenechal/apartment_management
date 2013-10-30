require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module ApartmentManagement
  class Application < Rails::Application
    config.i18n.default_locale = :fr
    config.time_zone =           'Europe/Paris'
    config.encoding =            'utf-8'
  end
end
