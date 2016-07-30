require 'rack'
# require the gem

class MyApp
    def self.call(env)
        req = Rack::Request.new(env)
        req.params

        grade = req.params['score'].to_i
            if (grade==100)
                letter = "A"
            elsif (grade>90)
                letter = "B"
            else
                letter = "C"
            end
        # if everything is ok, it will return 200. So when everything is ok, send the message "Hello world" to be displayed
        # alternatively, if chaged to 400, return the message when there's an erro
        [200,
         { 'Content-Type' => 'text/html' },
        ["<h1>Your score is #{letter} </h1>"]]
    end
end

Rack::Handler::WEBrick.run MyApp

# On the browser, localhost:8080/?name=Bob&spin=270
