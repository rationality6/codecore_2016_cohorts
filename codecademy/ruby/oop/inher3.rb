class Message
    @@messages_sent = 0
    def initialize(from, to)
        @from = from
        @to = to
        @@messages_sent += 1
    end

    def self.counting_messages
        "#{@@messages_sent}"
    end
end

class Email < Message
    def initialize(from, to)
        super
    end
end

my_message = Message.new('me', 'you')
my_message = Message.new('me', 'you')
my_message = Message.new('me', 'you')

puts Message.counting_messages
