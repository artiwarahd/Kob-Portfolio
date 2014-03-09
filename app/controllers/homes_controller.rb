class HomesController < ApplicationController
  def index
    @images = {
      "job" => {
        "archen" => Dir.glob("app/assets/images/folio/job/archen/*_thumb.jpg")
      },
      "study" => {
        "general" => Dir.glob("app/assets/images/folio/study/*_thumb.jpg")
      }
    }

    @honor = Dir.glob("app/assets/images/folio/study/honor/*_thumb.jpg")

    @thesis = {
      "cover" => "folio/study/thesis/COVER11.jpg",
      "images" => Dir.glob("app/assets/images/folio/study/thesis/PLATE*.jpg")
    }

    @arsomsilp_works = {
      "hostpice" => {
        "cover" => "folio/job/arsomsilp/PLATE28.jpg",
        "images" => Dir.glob("app/assets/images/folio/job/arsomsilp/hostpice/*.jpg")
      },
      "T.house" => {
        "cover" => "folio/job/arsomsilp/PLATE26.jpg",
        "images" => Dir.glob("app/assets/images/folio/job/arsomsilp/T.house/*.jpg")
      }
    }
  end
end