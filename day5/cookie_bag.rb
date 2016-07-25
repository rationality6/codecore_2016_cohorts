require './cookie'
require './oreo'

class CookieBag
    def initialize
        @cookies = []
    end

    def add_cookie(c)
        @cookies.push(c)
    end

    def take_cookie
        @cookies.pop
    end

    def info
        puts "This cookie bag has#{@cookies.length} cookie(s)"
    end
end

ali_cookie = Cookie.new(10, 20, true)
josh_cookie = Oreo.new(10, 10, false)
cookie_bag = CookieBag.new
cookie_bag.add_cookie(ali_cookie)
cookie_bag.add_cookie(josh_cookie)
puts ali_cookie.bake
cookie_bag.info
cookie_bag.take_cookie
cookie_bag.info
