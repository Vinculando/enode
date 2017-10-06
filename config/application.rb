require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Enode
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.to_prepare do
      Devise::SessionsController.layout 'login'
      Devise::RegistrationsController.layout proc{ |controller|
        if company_signed_in?
          "company"
        elsif user_signed_in?
          'user'
        else
          'login'
        end }
        Devise::PasswordsController.layout 'login'
    end

  end

end
Raven.configure do |config|
  config.dsn = 'https://00b5bf5e021145f1b99e04bf91521002:b03fc9c9e49441928675bb2ec2defc8c@sentry.io/226719'
end

