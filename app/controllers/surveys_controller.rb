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

  def show
    @survey = Survey.find(params[:id])
  end

  def edit
    @survey = current_user.surveys.find(params[:id])
  end

  def update
    @survey = current_user.surveys.find(params[:id])

    if @survey.update(survey_params)
      redirect_to surveys_path
    else
      render :edit
    end
  end

  def destroy
    survey = current_user.surveys.find(params[:id])
    survey.destroy

    redirect_to surveys_path
  end

  private

  def survey_params
    params.require(:survey).permit(:name, :description)
  end
end
