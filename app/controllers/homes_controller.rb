class HomesController < ApplicationController
  before_filter :load_main_nav, only: :index

  def load_main_nav
    @main_nav = {
      "Home" => "landing",
      "Portfolio" => "portfolio",
      "About me" => "about-me",
      "Contact" => "contact",
      "Links" => "links"
    }
  end

  def index
    
  end
end