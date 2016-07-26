class HelloController < ApplicationController
    def index
        render text: 'Hello World..!'
    end

    def foo
        render text: 'Foobar.'
    end

    def view
        @msg = 'Hello world...!??'
    end
end
