require 'facebook/messenger/version'
require 'facebook/messenger/error'
require 'facebook/messenger/subscriptions'
require 'facebook/messenger/profile'
require 'facebook/messenger/bot'
require 'facebook/messenger/client'
require 'facebook/messenger/configuration'
require 'facebook/messenger/incoming'

module Facebook
  # All the code for this gem resides in this module.
  module Messenger
    GRAPH_API = 'https://graph.facebook.com/v2.6/'

    def self.configure
      yield config
    end

    def self.config
      @config ||= Configuration.new
    end

    def self.config=(config)
      @config = config
    end

    configure do |config|
      config.provider = Configuration::Providers::Environment.new
    end
  end
end
