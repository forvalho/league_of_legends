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

      def self.region
         options[:region]
      end

      def self.api_key
        ::LeagueOfLegends::Api.key
      end

      def initialize options = {}
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

      def base_url
        [
          ::LeagueOfLegends::Api.base_url, 
          self.class.region, 
          self.class.version
        ].join('/')
      end

      def url_parameters
        [
          "?api_key=#{self.class.api_key}"
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
