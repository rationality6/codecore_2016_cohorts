class Quiz
    def initialize
        @answers = [1, 1, 1]
        @score = 0
    end

    def score(q, a)
        persent = (a / q.to_f) * 100
        "You scored #{persent} %, you got #{a} out of #{q} questions correctly."
    end

    # print score(6,3)

    def quiz_game
        for i in (0...@answers.length)
            puts "How many sides does a hexagon have? \n1 - five\n2 - six\n3 - seven\nEnter the correct number:"
            user_answer = gets.chomp.to_i
            # p user_answer
            if user_answer == @answers[i]
                puts 'Current.'
                @score += 1
            else
                puts 'Wrong.'
            end
        end

        puts score(@answers.length, @score)
    end
end

quiz0 = Quiz.new
quiz0.quiz_game
