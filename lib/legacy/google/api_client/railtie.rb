require 'rails/railtie'
require 'legacy/google/api_client/logging'

module Legacy
  module Google
    class APIClient
      
      ##
      # Optional support class for Rails. Currently replaces the built-in logger
      # with Rails' application log.
      #
      class Railtie < Rails::Railtie
        initializer 'google-api-client' do |app|
          logger = app.config.logger || Rails.logger
          Legacy::Google::APIClient.logger = logger unless logger.nil?
        end
      end
    end
  end
end
