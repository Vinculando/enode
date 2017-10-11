class DashboardsController < ApplicationController
  before_action :load_company, only: [:company]
  before_action :authenticate_entity!, except: [:region_city]
  before_action :load_user, only: [:student, :academico]

  def student
  end

  def company
  end


  def academico
    @user = User.find_by(id: current_user.id)
  end

  def region_city
    @cities = []
    if params[:filter].present?
      region = Region.find(params[:filter])
      @cities = region.cities
    end
  end

  private

  def load_company
    if !company_signed_in?
      redirect_to dashboards_student_path, alert: "no tienes autorizacion para entrar ahí!"
    end
  end

  def load_user
    if !user_signed_in?
      redirect_to dashboards_company_path, alert: "no tienes autorizacion para entrar ahí!"
    end
  end

end
