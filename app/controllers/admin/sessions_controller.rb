module Admin
  class SessionsController < ::AdminController
    skip_before_action :redirect_if_not_logged_in
    before_action :redirect_if_logged_in, only: [:new]

    # GET: /admin/sessions/new
    def new
    end

    # POST: /admin/sessions
    def create
      # password = params[:password]
      session[:admin_id] = 1

      redirect_to controller: 'admin/samples', action: 'index'
    end

    # DELETE: /admin/sessions/:id
    def destroy
      session[:admin_id] = nil

      redirect_to root_path
    end
  end
end

# Convention over Configuration
