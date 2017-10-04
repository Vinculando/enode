class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :user_layout

  devise_group :entity, contains: %i[user company]


  def user_layout
    if company_signed_in?
      'company'
    else
      'user'
    end
  end
end
