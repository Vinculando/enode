require 'test_helper'

class PublicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publication = publications(:one)
  end

  test "should get index" do
    get publications_url
    assert_response :success
  end

  test "should get new" do
    get new_publication_url
    assert_response :success
  end

  test "should create publication" do
    assert_difference('Publication.count') do
      post publications_url, params: { publication: { area_id: @publication.area_id, company_id: @publication.company_id, description: @publication.description, limite: @publication.limite, premios: @publication.premios, problema: @publication.problema, titulo: @publication.titulo, type_id: @publication.type_id } }
    end

    assert_redirected_to publication_url(Publication.last)
  end

  test "should show publication" do
    get publication_url(@publication)
    assert_response :success
  end

  test "should get edit" do
    get edit_publication_url(@publication)
    assert_response :success
  end

  test "should update publication" do
    patch publication_url(@publication), params: { publication: { area_id: @publication.area_id, company_id: @publication.company_id, description: @publication.description, limite: @publication.limite, premios: @publication.premios, problema: @publication.problema, titulo: @publication.titulo, type_id: @publication.type_id } }
    assert_redirected_to publication_url(@publication)
  end

  test "should destroy publication" do
    assert_difference('Publication.count', -1) do
      delete publication_url(@publication)
    end

    assert_redirected_to publications_url
  end
end
