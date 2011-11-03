require 'test_helper'
require 'has_mobile_views'

class HasMobileViewsTest < ActionController::TestCase
  tests MobileController

  test "should set the mode properly" do
    get :index
    assert_equal false, session[:mobile_view]
    assert !@controller.view_paths.any?{|p| p.to_s.ends_with?("app/mobile_views")}

    get :index, :force_view => 'mobile'
    assert_equal true, session[:mobile_view]
    assert @controller.view_paths.any?{|p| p.to_s.ends_with?("app/mobile_views")}
  end

end
