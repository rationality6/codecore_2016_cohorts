class HelloController < ApplicationController
    def index
        render text: 'Hello wolrd3'
    end

    def view
        @msg = 'Hello World..!'
        render 'hello/special'
    end


end
