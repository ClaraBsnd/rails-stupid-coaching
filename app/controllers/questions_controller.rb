# frozen_string_literal: true

##
# This controller displays and answers to questions
#

class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question == nil
      @answer = "I cannot answer if you don't ask me question"
    elsif @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
