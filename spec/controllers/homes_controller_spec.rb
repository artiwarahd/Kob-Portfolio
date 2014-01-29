require 'spec_helper'

describe HomeomsController do

  describe "index" do
    it "everybody can view home index page" do
      get :index

      response.should be_success
      response.should render_template("index")
    end
  end
end