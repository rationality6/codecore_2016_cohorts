class TeamRand
    attr_accessor :team_array

    def initialize(array)
        puts 'Odd number of member.' if array.length.odd?
        @team_array = array
    end

    def randomiz(how_many)
        team_array_rand = team_array.shuffle
        team_count = 1
        slice = team_array_rand.each_slice(how_many).to_a
        for team in slice
            print "Team#{team_count}#{team} "
            team_count += 1
        end
    end
end

people = %w(Hyun Jen Ali Berry Moe Raff John Ron)
team_rand = TeamRand.new(people)
team_rand.randomiz(2)
