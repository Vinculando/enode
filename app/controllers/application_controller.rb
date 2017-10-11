class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :user_layout

  devise_group :entity, contains: %i[user company]

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user
      new_user_session_path
    elsif resource_or_scope == :company
      new_company_session_path
    elsif resource_or_scope == :admin_user
      new_admin_user_session_path
    end
  end

  def user_layout
    if company_signed_in?
      'company'
    else
      'user'
    end
  end

  def current_ability
    if company_signed_in?
      @current_ability ||= Ability.new(current_company)
    else
      @current_ability ||= Ability.new(current_user)
    end
  end

end
