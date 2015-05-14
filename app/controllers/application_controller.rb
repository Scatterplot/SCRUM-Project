class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :check_user_status, :except => [:index, :edit, :destroy, :new]
  protect_from_forgery with: :exception
  
  def check_user_status
      if user_signed_in?
          if current_user.role_id != 1
              redirect_to ''
          end
      else
        redirect_to '/users/sign_in'
      end
  end
end
