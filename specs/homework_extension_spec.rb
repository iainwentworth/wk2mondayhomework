require('minitest/autorun')
require('minitest/rg')
require_relative('../homework_extension.rb')

class LibraryTest < MiniTest::Test

  def setup()
    @library = Library.new("lord of the rings", "Jeff", "01/12/16")
  end

  def test_get_book_name()
    assert_equal("lord of the rings", @library.get_book_name())
  end

  def test_get_rental_details
  @library.get_rentai_details(book_to_check)
  assert_equal()
  end



end
