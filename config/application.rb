require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mockproject
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.assets.initialize_on_precompile = false
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
<<<<<<< HEAD
    config.autoload_paths += %w(#{config.root}/app/models/ckeditor)

=======
    #config for middleware page 404
    config.exceptions_app = self.routes
>>>>>>> 2c94a8f40a15c1ba6fe0e9a25aa2c1c167c99a1b
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
