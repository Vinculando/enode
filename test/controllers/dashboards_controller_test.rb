require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get academico" do
    get dashboards_academico_url
    assert_response :success
  end

end
