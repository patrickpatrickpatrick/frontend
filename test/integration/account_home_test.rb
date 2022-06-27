require "integration_test_helper"

class AccountHomeTest < ActionDispatch::IntegrationTest
  should "redirect users to the manage your account page" do
    ClimateControl.modify GOVUK_PERSONALISATION_MANAGE_URI: "https://account.gov.uk/manage-your-account" do
      get account_home_path
      assert_response :redirect
      assert response.location = GovukPersonalisation::Urls.manage
    end
  end
end
