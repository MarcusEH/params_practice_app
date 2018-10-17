class Api::MessagesController < ApplicationController
  
  def index
    @messages = Message.all
    render 'index.json.jbuilder'
  end

  # def show
  #   input_message = params[:text].upcase
  #   @message = Message.new(text: input_message)
  #   @message.save
    
  # end


  def create
    input_message = params[:text].upcase
    @message = Message.new(text: input_message)
    @message.save
    render "show.json.jbuilder"
  end
end
