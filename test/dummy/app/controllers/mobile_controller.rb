class MobileController < ActionController::Base
  has_mobile_views

  def index
    render :nothing => true
  end
end
