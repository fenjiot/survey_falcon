class ResponsesController < ApplicationController
  def index
    @survey = load_survey_from_url
  end

  private

  def load_survey_from_url
    Survey.find(params[:survey_id])
  end
end
