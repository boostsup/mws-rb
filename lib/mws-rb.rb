require 'httparty'
require 'base64'
require 'openssl'
require 'active_support/core_ext'

require_relative 'mws-rb/helpers'
require_relative 'mws-rb/connection'
require_relative 'mws-rb/api'
require_relative 'mws-rb/api/orders'
require_relative 'mws-rb/api/reports'

module MWS
  def self.new(options={})
    @connection = MWS::Connection.new(options)
    @api = MWS::Api.new(@connection)
  end

  def self.orders
    @orders = MWS::Orders.new(@connection, @api)
  end

  def self.reports
    @reports = MWS::Reports.new(@connection, @api)
  end
end
