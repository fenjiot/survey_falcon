class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:question_id])
  end
end
