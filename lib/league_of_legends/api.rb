require 'league_of_legends/request/all'

module ::LeagueOfLegends
  class Api

    attr_reader :key, :base_url

    def initialize options = {}
      case options
      when Hash
        opt = self.class.default_options.merge(options)
        set_key(opt[:key])
        set_base_url(opt[:base_url])
      when String
        set_key(options)
        set_base_url(self.class.default_options[:base_url])
      else
        raise ArgumentError.new 'expected a Hash or a String'
      end
    end

    def self.default_options
      {
        key: nil,
        base_url: 'https://prod.api.pvp.net/api/lol'
      }
    end

    def get request, *arguments
      req_class = ::LeagueOfLegends::Request::Mapper.get(request.to_sym)
      request = req_class.new self, *arguments
      request.response
    end

    def available_requests
      ::LeagueOfLegends::Request::Mapper.available
    end

    private

    def set_key key = nil
      case key
      when nil
        raise ArgumentError.new 'wrong number of arguments (0 for 1)'
      when String
        if key =~ /^\h{8}(-\h{4}){3}-\h{12}$/
          @key = key.chomp
        else
          raise ArgumentError.new 'key with incorrect format'
        end
      else
        raise ArgumentError.new 'expected a String'
      end
    end

    def set_base_url base_url
      require 'uri'

      if base_url =~ /^#{URI::regexp}$/o
        @base_url = base_url.chomp
      else
        raise ArgumentError.new 'expected a valid URL'
      end
    end

  end
end