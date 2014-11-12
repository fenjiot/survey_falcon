class MultiChoiceOptionsController < ApplicationController
  def new
    @multi_choice_style = load_multi_choice_style_from_url
    @multi_choice_option = @multi_choice_style.multi_choice_options.new
  end

  def create
    @multi_choice_style = load_multi_choice_style_from_url
    @question = question
    @multi_choice_option = @multi_choice_style.multi_choice_options.
      new(multi_choice_option_params)
    if @multi_choice_option.save
      redirect_to survey_path(@question.survey)
    else
      render :new
    end
  end

  private

  def load_multi_choice_style_from_url
    MultiChoiceStyle.find(params[:multi_choice_style_id])
  end

  def multi_choice_option_params
    params.require(:multi_choice_option).permit(:body)
  end

  def question
    Question.find_by(style_id: params[:multi_choice_style_id],
                     style_type: "MultiChoiceStyle")
  end
end
