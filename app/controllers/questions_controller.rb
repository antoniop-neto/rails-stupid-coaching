class QuestionsController < ApplicationController
  def ask
    @ask
  end

  def answer
    if params[:answer].include?('?') && params[:answer] == params[:answer].upcase
      @answer = 'I can feel your motivation! Silly question, get dressed and go to work!'
    elsif params[:answer].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:answer].include?('I am going to work right now!') || params[:answer].include?('I AM GOING TO WORK RIGHT NOW!')
      @answer = 'Great !'
    elsif params[:answer] == params[:answer].upcase
      @answer = "I can feel your motivation! I don't care, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
