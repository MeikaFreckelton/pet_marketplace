class HomeController < ApplicationController
  def page
    if user_signed_in? || organisation_signed_in? || admin_signed_in?
      redirect_to about_page_path
    end
  end
end
