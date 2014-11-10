class TextStylesController < ApplicationController
  def new
    @text_style = TextStyle.new
    @survey = load_survey_from_url
  end

  def create
    text_style = TextStyle.new(text_style_params)
    survey = load_survey_from_url
    if text_style.save
      survey.questions.create(style: text_style)
      redirect_to survey_path(survey)
    else
      render :new
    end
  end

  private

  def text_style_params
    params.require(:text_style).permit(:body)
  end

  def load_survey_from_url
    Survey.find(params[:survey_id])
  end
end
