require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title("Contact"), "Contact | Ruby on Rails"
    assert_equal full_title("About"), "About | Ruby on Rails"
    assert_equal full_title("Sign Up"), "Sign Up | Ruby on Rails"
  end
end
