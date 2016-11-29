require 'test_helper'

class RostersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rosters_index_url
    assert_response :success
  end

  test "should get import" do
    get rosters_import_url
    assert_response :success
  end

end
