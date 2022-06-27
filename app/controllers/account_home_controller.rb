class AccountHomeController < ApplicationController
  def show
    redirect_to(GovukPersonalisation::Urls.manage, allow_other_host: true)
  end
end
