class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

  private
  def require_login
    unless current_user
      flash[:error] = "Please login"
      redirect_to '/login'
    end
  end
end
