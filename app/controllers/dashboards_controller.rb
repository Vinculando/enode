class DashboardsController < ApplicationController
  before_action :load_company, only: [:company]
  before_action :load_user, only: [:student]

  def student
  end

  def company
  end

  private

  def load_company
    if !company_signed_in?
      redirect_to root_path, alert: "no tienes autorizacion para entrar ahi!"
    end
  end

  def load_user
    if !user_signed_in?
      redirect_to root_path, alert: "no tienes autorizacion para entrar ahi!"
    end
  end
end
