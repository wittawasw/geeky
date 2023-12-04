class ApplicationController < ActionController::Base
  # before_action :skip_cookies, if: :not_signed_in?

  def skip_cookies
    # request.session_options[:skip] = true
  end

  def not_signed_in?
    # current_user.nil?
    true
  end
end
