class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:question_id])
    @survey = Survey.find(params[:id])
  end
end
