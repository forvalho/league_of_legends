module ::LeagueOfLegends
  module Request
    class Mapper

      class << self

        def get request_name
          get_info(request_name)[:class]
        end

        def get_info request_name
          map[request_name.to_sym]
        end

        def available? request_name
          map.has_key? request_name
        end

        def available
          map.keys
        end

        private

        def map
          @map ||= {
            summoner_stats_summary: {
              class: ::LeagueOfLegends::Request::Stats::BySummoner::Summary,
            },
            summoner_stats_ranked: {
              class: ::LeagueOfLegends::Request::Stats::BySummoner::Ranked,
            },
            champions: {
              class: ::LeagueOfLegends::Request::Champion,
            },
            recent_games: {
              class: ::LeagueOfLegends::Request::Game::BySummoner::Recent,
            },
            league_challenger: {
              class: ::LeagueOfLegends::Request::League::Challenger,
            },
            league_summoner_entry: {
              class: ::LeagueOfLegends::Request::League::BySummoner::Entry,
            },
          }
        end

      end

    end
  end
end
