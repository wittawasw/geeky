class ApplicationController < ActionController::Base
  # before_action :skip_cookies, if: :not_signed_in?
  # before_action :sleep3

  NUMBER_PER_PAGE = 5

  def skip_cookies
    request.session_options[:skip] = true
  end

  def not_signed_in?
    session[:current_user_id].nil?
  end

  def sleep3
    sleep 3
  end
end
