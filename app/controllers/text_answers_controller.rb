class TextAnswersController < ApplicationController

  def create
    @text_answer = TextAnswer.new(text_answer_params)
    if @text_answer.save
      current_user.responses.new(question_id = params[:question_id])
      binding.pry
      current_user.responses.create(answer: @text_answer)
      redirect_to surveys_path
    end
  end

  private

  def text_answer_params
    params.require(:text_answer).permit(:body)
  end
end
