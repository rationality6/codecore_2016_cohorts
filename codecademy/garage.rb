class Book
    attr_reader :author, :title

    def initialize(author, title)
        @author = author
        @title = title
    end

    def goo
        puts @author
    end
end

rubybook = Book.new 'matz', 'Ruby in a Nutshell'
puts rubybook.title

# books = {}
# books[:matz] = 'The Ruby Language'
# books[:black] = 'The Well-Grounded Rubyist'
#
# Person.create(name: 'John Doe', age: 27)
#
# def self.create(params)
#     @name = params[:name]
#     @age = params[:age]
# end
#
# a = Person
# print a.name
