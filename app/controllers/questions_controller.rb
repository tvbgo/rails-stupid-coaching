class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @your_message = params[:question]
    coach_answer(@your_message)
  end

  def coach_answer(message)
    if message.include? '?'
      @response = 'Silly question, get dressed and go to work!'
    elsif message.downcase != 'i am going to work'
      @response = "I don't care, get dressed and go to work!"
    else
      @response = 'Great!'
    end
  end
end
