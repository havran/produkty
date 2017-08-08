require 'test_helper'

class Documents::DocumentsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get documents_url
    assert_response :success
  end

  test "should get new" do
    get new_document_url
    assert_response :success
  end

  test "should create document" do
    assert_difference('Documents::Document.count') do
      post documents_url, params: { document: { title: 'Title 1' } }
    end

    assert_response :redirect
    assert_redirected_to documents_url
    follow_redirect!
    assert_response :success
  end

  test "should show document" do
    document = documents_documents(:one)
    get document_url(document)
    assert_response :success
  end

  test "should get edit" do
    document = documents_documents(:one)
    get edit_document_url(document)
    assert_response :success
  end

  test "should update document" do
    document = documents_documents(:one)
    patch document_url(document), params: { document: { id: 1, title: 'Title 1 updated' } }
    assert_response :redirect
    assert_redirected_to documents_url
    follow_redirect!
    assert_response :success
  end

  test "should destroy document" do
    document = documents_documents(:one)
    assert_difference('Documents::Document.count', -1) do
      delete document_url(document)
    end

    assert_redirected_to documents_url
  end
end
