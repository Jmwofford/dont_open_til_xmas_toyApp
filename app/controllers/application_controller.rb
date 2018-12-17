class ApplicationController < ActionController::Base
# make ()s here, to call in all_controllers
# similar to the "state" of a component structure in ReactJS
def current_user
    if session[:user_id]
        @current_user ||= User.find(session[:user_id])
    else
        @current_user = nil
    end
  end
end
