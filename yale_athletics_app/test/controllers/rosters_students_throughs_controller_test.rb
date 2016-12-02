require 'test_helper'

class RostersStudentsThroughsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rosters_students_throughs_index_url
    assert_response :success
  end

  test "should get import" do
    get rosters_students_throughs_import_url
    assert_response :success
  end

end
