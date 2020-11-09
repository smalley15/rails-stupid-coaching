class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(*)
    if @question == 'I am going to work'
      'Great!'
    elsif @question == nil
      @question = 'You didnt type any questions'
    elsif @question.include?('?')
      'Silly question, get dressed and go to work!'
    else
      'I dont care, get dressed and go to work!'
    end
  end
end
