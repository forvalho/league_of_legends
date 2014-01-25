# league_of_legends

This gem implements the League Of Legends API (currently in open beta). It will continue to be updated as the API evolves.

This product is not endorsed, certified or otherwise approved in any way by Riot Games, Inc. or any of its affiliates.

## Installation

Add this line to your application's Gemfile:

    gem 'league_of_legends'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install league_of_legends

## Usage

The gem is still not (properly) usable at this point. It is a work in progress! :)

To work with it (until the next version comes out!), change the code in lib/league_of_legends/api.rb to return your actual API key.

Then you can do:

    sss_request = ::LeagueOfLegends::Request::Stats::BySummoner::Summary.new <summoner_id>
    sss_request.response # => ::LeagueOfLegends::DTO::PlayerStatsSummaryList

You can read about each Request and DTO at http://developer.riotgames.com/api/methods



## Contributing

1. Fork it ( http://github.com/forvalho/league_of_legends/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
