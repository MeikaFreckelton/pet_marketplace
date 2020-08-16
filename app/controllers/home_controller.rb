class HomeController < ApplicationController
  def page
    # change home page to about page when logged in :
    if user_signed_in? || organisation_signed_in? || admin_signed_in?
      redirect_to about_page_path
    end
  end
end
