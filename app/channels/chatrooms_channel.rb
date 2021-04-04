class ChatroomsChannel < ApplicationRecord::Channel 
    def subscribed
        stream_from "chatrooms_channel"
    end

    def unsubscribed
    end
end