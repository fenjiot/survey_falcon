class MultiChoiceStylesController < ApplicationController
  def new
    @multi_choice_style = MultiChoiceStyle.new
    @survey = load_survey_from_url
  end

  def create
    @survey = load_survey_from_url
    @multi_choice_style = MultiChoiceStyle.new(multi_choice_style_params)
    if @multi_choice_style.save
      @survey.questions.create(style: @multi_choice_style)
      redirect_to survey_path(@survey)
    else
      render :new
    end
  end

  def show
    @multi_choice_style = load_multi_choice_style_from_url
    @multi_choice_options = @multi_choice_style.multi_choice_options 
  end

  private

  def load_survey_from_url
    Survey.find(params[:survey_id])
  end

  def multi_choice_style_params
    params.require(:multi_choice_style).permit(:body)
  end

  def load_multi_choice_style_from_url
    MultiChoiceStyle.find(params[:multi_choice_style_id])
  end
end
