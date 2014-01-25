module ::LeagueOfLegends
  module Request
    class Base
      require 'net/http'

      # https://prod.api.pvp.net/api/lol/
      # euw/
      # v1.3/summoner/
      # 1234,5678/masteries?api_key=0c78469b-b773-4b35-9f6a-00d7fe964290

      # url = URI.parse('http://www.example.com/index.html')
      # req = Net::HTTP::Get.new(url.path)
      # res = Net::HTTP.start(url.host, url.port) {|http|
      #   http.request(req)
      # }
      # puts res.body

      # Net::HTTP::Get.new(url.to_s)

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

    end
  end
end
