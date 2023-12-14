class ApplicationController < ActionController::Base
  # before_action :skip_cookies, if: :not_signed_in?
  # before_action :sleep3
  before_action :set_locale

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

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end

  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end
end
