class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_main_nav

  def load_main_nav
    @main_nav = {
      "Home" => "landing",
      "Portfolio" => "portfolio",
      "About me" => "about-me",
      "Contact" => "contact",
      "Links" => "links"
    }
  end
end
