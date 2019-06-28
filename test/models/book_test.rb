require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def setup
    @book = Book.new(title: "The Catcher in the Rye", author: "J.D. Salinger", year: 1951)
  end

  test "should be valid" do
    assert @book.valid?
  end

  test "title should be present" do
  	@book.title = "   "
  	assert_not @book.valid?
  end

  test "author should be present" do
  	@book.author = "   "
  	assert_not @book.valid?
  end

  test "year should be present" do
  	@book.year = "   "
  	assert_not @book.valid?
  end

  test "title should not be too long" do
    @book.title = "a" * 81
    assert_not @book.valid?
  end

  test "author should not be too long" do
    @book.author = "a" * 81
    assert_not @book.valid?
  end

  test "year should not be too long" do
    @book.year = 1 * 10000
    assert_not @book.valid?
  end
end
