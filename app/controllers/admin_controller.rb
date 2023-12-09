class AdminController < ActionController::Base
  before_action :redirect_if_not_logged_in

  layout 'admin'

  private

  def redirect_if_logged_in
    if session[:admin_id]
      redirect_to controller: 'admin/samples', action: 'index'
    end
  end

  def redirect_if_not_logged_in
    unless session[:admin_id]
      redirect_to controller: 'admin/sessions', action: 'new'
    end
  end
end
