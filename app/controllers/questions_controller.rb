class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @your_message = params[:question]
    if @your_message.include? '?'
      @response = 'Silly question, get dressed and go to work!'
    elsif @your_message.downcase != 'i am going to work'
      @response = "I don't care, get dressed and go to work!"
    else
      @response = 'Great!'
    end
  end
end
