require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  
  def setup
    @store = Store.new(codename: "MTY01", address: "Av. Del Estado 120", phone: "8123154497")
  end

  test "should be valid" do
  	assert @store.valid?
  end

  test "codename should be present" do
  	@store.codename = "   "
  	assert_not @store.valid?
  end

  test "address should be present" do
  	@store.address = "   "
  	assert_not @store.valid?
  end

  test "phone should be present" do
  	@store.phone = "   "
  	assert_not @store.valid?
  end

  test "codename should not be too long" do
    @store.codename = "a" * 7
    assert_not @store.valid?
  end

  test "address should not be too long" do
    @store.address = "a" * 121
    assert_not @store.valid?
  end

  test "phone should not be too long" do
    @store.phone = "a" * 21
    assert_not @store.valid?
  end
end
