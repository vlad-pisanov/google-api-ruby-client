require 'logger'

module Legacy
  module Google
    class APIClient
      
      class << self
        ##
        # Logger for the API client
        #
        # @return [Logger] logger instance.
        attr_accessor :logger
      end
  
      self.logger = Logger.new(STDOUT)
      self.logger.level = Logger::WARN  
  
      ##
      # Module to make accessing the logger simpler
      module Logging
        ##
        # Logger for the API client
        #
        # @return [Logger] logger instance.
        def logger
          Legacy::Google::APIClient.logger
        end
      end
  
    end
    
    
  end
end
