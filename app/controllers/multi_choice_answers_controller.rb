class MultiChoiceAnswersController < ApplicationController
  def create
    question_id = params[:question_id]
    multi_choice_answer = MultiChoiceAnswer.new(multi_choice_answer_params)
    if multi_choice_answer.save
      current_user.responses.create(
        answer: multi_choice_answer,
        question_id: question_id,
      )
    end
    redirect_to root_path
  end

  private

  def multi_choice_answer_params
    params.require(:multi_choice_answer).
      permit(:multi_choice_option_id).
      merge(body: multi_choice_option_body)
  end

  def multi_choice_option_body
    multi_choice_option  = MultiChoiceOption.find(multi_choice_option_id)
    multi_choice_option.body
  end

  def multi_choice_option_id
    params[:multi_choice_answer]["multi_choice_option_id"]
  end
end
