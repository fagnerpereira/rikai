require "test_helper"

class TranslationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get translations_index_url
    assert_response :success
  end
end
