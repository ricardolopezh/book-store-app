require 'test_helper'

class StoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
  	get stores_path
  	assert_response :success
  end

  test "should get new" do
  	get new_store_path
  	assert_response :success
  end

  test "should get show" do
  	get stores_path
  	assert_response :success
  end
end
