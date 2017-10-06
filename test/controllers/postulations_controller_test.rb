require 'test_helper'

class PostulationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postulation = postulations(:one)
  end

  test "should get index" do
    get postulations_url
    assert_response :success
  end

  test "should get new" do
    get new_postulation_url
    assert_response :success
  end

  test "should create postulation" do
    assert_difference('Postulation.count') do
      post postulation_url, params: { postulation: { contenido: @postulation.contenido, publication_id: @postulation.publication_id, user_id: @postulation.user_id } }
    end

    assert_redirected_to postulation_url(Application.last)
  end

  test "should show application" do
    get postulation_url(@postulation)
    assert_response :success
  end

  test "should get edit" do
    get edit_postulation_url(@postulation)
    assert_response :success
  end

  test "should update postulation" do
    patch postulation_url(@postulation), params: { postulation: { contenido: @postulation.contenido, publication_id: @postulation.publication_id, user_id: @postulation.user_id } }
    assert_redirected_to postulation_url(@postulation)
  end

  test "should destroy postulation" do
    assert_difference('Postulations.count', -1) do
      delete postulation_url(@application)
    end

    assert_redirected_to postulations_url
  end
end
