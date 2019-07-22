class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @submission = params[:question]
    right_answer = "I am going to work"

    @answer = "Get dressed and go to work!"
    @answer = "great" if @submission == right_answer
    @answer = "Silly question, get dressed and go to work!" if @submission.include? "?"
    @answer
  end
end
