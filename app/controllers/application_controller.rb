class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :user_layout

private

  def user_layout
    if company_signed_in?
      'company'
    else
      'user'
    end
  end

end
