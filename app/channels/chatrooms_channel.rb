class ChatroomsChannel < ApplicationRecord::Channel 
    def subscribed
        @chatroom = Chatroom.find(params[:room])
        stream_for @chatroom
    end

    def unsubscribed
    end
end