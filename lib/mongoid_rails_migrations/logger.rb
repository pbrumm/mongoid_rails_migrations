module Mongoid
  class Migrator
    def self.logger
      @@logger ||= nil
      return @@logger if @@logger
      if defined?(Rails)
        @@logger = Rails.logger
      else
        @@logger = Logger.new()
      end
      @@logger
    end
  end
end
