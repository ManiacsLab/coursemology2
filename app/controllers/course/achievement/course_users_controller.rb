# frozen_string_literal: true
class Course::Achievement::CourseUsersController < Course::Achievement::Controller
  before_action :authorize_achievement!, only: [:index]

  def index
  end

  private

  def authorize_achievement!
    authorize!(:award, @achievement)
  end
end
