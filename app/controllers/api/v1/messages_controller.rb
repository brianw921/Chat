class Api::V1::MessagesController < ApplicationController

    def index 
        messages = Message.all 
        render json: messages
    end

    def create 
        message = Message.new(message_params)
        render json: message
    end

    private 
    
    def message_params 
        params.require(:message).permit(:content, :room_id, :user_id)
    end
end
