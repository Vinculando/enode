require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get student" do
    get dashboards_student_url
    assert_response :success
  end

  test "should get company" do
    get dashboards_company_url
    assert_response :success
  end

end
