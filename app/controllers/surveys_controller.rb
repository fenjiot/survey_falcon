class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def new
    @survey = current_user.surveys.new
  end

  def create
    @survey = current_user.surveys.new(survey_params)
    if @survey.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def survey_params
    params.require(:survey).permit(:name, :description)
  end
end
