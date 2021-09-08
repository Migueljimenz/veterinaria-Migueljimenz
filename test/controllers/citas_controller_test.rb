require "test_helper"

class CitasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get citas_index_url
    assert_response :success
  end

  test "should get new" do
    get citas_new_url
    assert_response :success
  end

  test "should get show" do
    get citas_show_url
    assert_response :success
  end

  test "should get create" do
    get citas_create_url
    assert_response :success
  end
end
