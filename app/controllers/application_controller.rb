class ApplicationController < ActionController::Base
  before_action :validate_admin

  private

  def validate_admin
    
    return unless current_user

    redirect_to admin_root_path
  end
end
