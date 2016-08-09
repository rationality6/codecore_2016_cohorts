class Application
    attr_accessor :status
    def initialize
    end

    public

    def print_status
        puts 'All systems go!'
    end

    private

    def password
        12_345
    end
end
