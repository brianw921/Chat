class Api::V1::ChatroomsController < ApplicationController

    def index
        chatrooms = Chatroom.all 
        render json: chatrooms
    end

    def create
        chatroom = Chatroom.new(chatroom_params)
        render json: chatroom
    end

    def show 
        chatroom = Chatrooom.find(params[:id])
        render json: chatroom
    end

    private 

    def chatroom_params 
        params.require(:chatroom).permit(:title)
    end
end
