require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Charmaker
  class Application < Rails::Application
    config.autoload_paths << "#{Rails.root}/app/rules"
    config.autoload_paths << "#{Rails.root}/app/builders"
  end
end
