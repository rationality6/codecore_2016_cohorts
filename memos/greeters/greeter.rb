class MegaGreeter
  attr_accessor :names

  def initialize(names = 'World')
    @names = names
  end

  def say_hi
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('each')
      @names.each do |name|
        puts "Hello each #{name}!"
      end
    else
      puts "Hello #{@names}"
    end
  end

  def say_bye
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('each')
      @names.each do |name|
        puts "Hello #{name}"
      end
    else
      puts "Hello #{@names}"
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Change name to be "Zeke"
  mg.names = 'Zeke'
  mg.say_hi
  mg.say_bye

  # Change the name to an array of names
  mg.names = %w(Albert Brenda Charles
                Dave Engelbert)
  mg.say_hi
  mg.say_bye

  # Change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end

# checkout sub
# checkout master
