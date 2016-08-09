class Computer
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
        @files = []
        @@users[username] = password
    end

    def create(filename)
        time = Time.now
        @files[filename] = time
        puts ().to_s
    end

    def self.get_users
        @@users
    end
end

my_computer = Computer.new('Hyun', 1234)
my_computer = Computer.new('Shin', 1234)
puts Computer.get_users
