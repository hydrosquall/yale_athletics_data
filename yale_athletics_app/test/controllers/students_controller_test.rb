require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get students_index_url
    assert_response :success
  end

  test "should get import" do
    get students_import_url
    assert_response :success
  end

end
