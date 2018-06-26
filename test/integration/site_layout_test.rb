require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_url
    assert_select "a[href=?]",root_url,count=2
    assert_select "a[href=?]",help_url
    assert_select "a[href=?]",about_url
    assert_select "a[href=?]",contact_url
    get contact_url
    assert_select "title", full_title("Contact")
    get sign_up_url
    assert_select "title", full_title("Sign Up")

  end
end
