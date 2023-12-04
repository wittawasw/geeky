module Admin
  class BaseController < ::ActionController::Base
    before_action :authenticate

    layout 'admin'

    def authenticate
    end
  end
end


# Admin::ActionController::Base
