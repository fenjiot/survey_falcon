class TextAnswersController < ApplicationController

  def create
    @text_answer = TextAnswer.new(text_answer_params)
    if @text_answer.save
      current_user.responses.create(answer: @text_answer, question_id: params[:question_id])
      redirect_to root_path
    end
  end

  private

  def text_answer_params
    params.require(:text_answer).permit(:body, :question)
  end
end
