require 'securerandom'

# Students management system
class Sms
    attr_accessor :school_name

    def initialize(school_name)
        @school_name = school_name
        @students_info_hash = {}
        @start_clening_check = 0
    end

    def instruction
        puts 'l: Display all students'
        puts 'n: New student data'
        puts 's: More details about a student'
        puts 'exit: Exit'
        print 'Select one type : '
        gets.chomp
    end

    def rand
        SecureRandom.uuid
    end

    def stream_lines(instruction)
        case instruction
        when 'l'
            for x, y in @students_info_hash
                puts "Student Id : #{x} Name : #{y[0]}"
            end
        when 'n'
            puts 'Plase type name, email, courses.'
            print 'Name : '
            user_input_name = gets.chomp
            print 'Email : '
            user_input_email = gets.chomp
            print 'Courses : '
            user_input_courses = gets.chomp.split(',')

            @students_info_hash[rand] = [user_input_name, user_input_email, user_input_courses]

            print @students_info_hash
            f = File.open("#{school_name}.txt", 'w')
            f.write("#{@students_info_hash} \n")
            f.close

        when 's'
            print 'Type a ID : '
            user_input = gets.chomp
            print @students_info_hash[user_input], "\n"
        when 'exit'
            exit

        else
            puts 'Type wrong.'
        end
    end

    def run
        if @start_clening_check == 0
            system 'clear'
            @start_clening_check += 1
        end
        loop do
            stream_lines(instruction)
        end
    end
end

if __FILE__ == $PROGRAM_NAME

    codecore = Sms.new('Codecore')
    codecore.run

end
