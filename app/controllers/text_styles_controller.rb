class TextStylesController < ApplicationController
  def new
    @text_style = TextStyle.new
    @survey = Survey.find(params[:survey_id])
    @question = Question.new
  end

  def create
    text_style = TextStyle.new(text_style_params)
    survey = Survey.find(params[:survey_id])
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
end
