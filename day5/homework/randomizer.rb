class TeamRand
    attr_accessor :team_array

    def initialize(array)
        if array.length.odd?
            puts "Odd number of member."
        end
        @team_array = array
    end

    def randomize
        team_array_rand = team_array.shuffle
        team_count = 1
        slice = team_array_rand.each_slice(2).to_a
        for team in slice
            print "Team#{team_count}#{team} "
            team_count += 1
        end
    end
end

people = %w(Hyun Jen Ali Kim Moe Raff)
team_rand = TeamRand.new(people)
team_rand.randomize
