# frozen_string_literal: true

class ApplicationController < ActionController::Base

  include Pagy::Backend

  before_action :authorized
  helper_method :current_user
  helper_method :logged_in?

  def not_found
    raise ActionController::RoutingError, 'Not Found'
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end
end
