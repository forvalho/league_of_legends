require "net/http"
require "uri"

module ::LeagueOfLegends
  module Request
    class Base
      require 'net/http'

      def self.options
        @options ||= default_options
      end

      def self.default_options
        {
          region: 'euw',
          version: dto_class.version
        }
      end

      def self.dto_class
        raise NotImplementedError, "Children of LeagueOfLegends::Request::Base must implement ::dto_class"
      end

      def self.version
        dto_class.version
      end

      def region
         options[:region]
      end

      def api_key
        api.key
      end

      def initialize api, options = {}
        @api = api
        @options = self.class.default_options.merge(options)
      end

      def response
        @response ||= send_request

        case @response.code.to_i
        when 200 then
          self.class.dto_class.new(@response.body)
        else
          @response.message
        end
      end

      protected

      attr_reader :api

      def base_url
        [
          api.base_url, 
          region, 
          self.class.version
        ].join('/')
      end

      def url_parameters
        [
          "?api_key=#{api_key}"
        ].join('&')
      end

      private

      def url
        base_url + url_parameters
      end

      def send_request
        uri = URI.parse url
        Net::HTTP.get_response uri
      end

    end
  end
end
