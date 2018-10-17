class Api::MessagesController < ApplicationController
  def create
    @message = Message.new(params[:message])
    @message.save
    render "show.json.jbuilder"
  end
end
