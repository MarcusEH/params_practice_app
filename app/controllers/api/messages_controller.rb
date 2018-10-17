class Api::MessagesController < ApplicationController
  def create
    input_message = params[:text].upcase
    @message = Message.new(text: input_message)
    @message.save
    render "show.json.jbuilder"
  end
end
