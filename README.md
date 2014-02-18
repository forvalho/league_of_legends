# league_of_legends [![Build Status](https://travis-ci.org/forvalho/league_of_legends.png?branch=master)](https://travis-ci.org/forvalho/league_of_legends) [![Dependency Status](https://gemnasium.com/forvalho/league_of_legends.png)](https://gemnasium.com/forvalho/league_of_legends) [![Code Climate](https://codeclimate.com/github/forvalho/league_of_legends.png)](https://codeclimate.com/github/forvalho/league_of_legends)

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

The gem is still a work in progress and has limited functionality.

    # create a new instance of the API
    lol_api = ::LeagueOfLegends::Api.new <api key>

    # get all available request types
    lol_api.available_requests

    # execute a request
    result_dto = lol_api.get(:summoner_stats_summary, <summoner id>)

    # total number of victories
    result_dto.player_stat_summaries.map(&:wins).reduce(&:+)


In this example, the DTO returned is a `::LeagueOfLegends::DTO::PlayerStatsSummaryList`.

You can read about each Request and DTO at http://developer.riotgames.com/api/methods



## Contributing

1. Fork it ( http://github.com/forvalho/league_of_legends/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
