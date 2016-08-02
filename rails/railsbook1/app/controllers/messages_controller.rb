class MessagesController < ApplicationController
    def index
        @messages = Massage.all
    end
end
