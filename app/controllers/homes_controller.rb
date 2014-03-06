class HomesController < ApplicationController
  def index
    @images = {
      "job" => {
        "archen" => Dir.glob("app/assets/images/folio/job/archen/*_thumb.jpg")
      },
      "study" => {
        "general" => Dir.glob("app/assets/images/folio/study/*_thumb.jpg"),
        "thesis" => Dir.glob("app/assets/images/folio/study/thesis/*_thumb.jpg")
      }
    }

    @arsomsilp_works = {
      "hostpice" => {
        "cover" => Dir.glob("app/assets/images/folio/job/arsomsilp/PLATE28.jpg"),
        "images" => Dir.glob("app/assets/images/folio/job/arsomsilp/hostpice/*.jpg")
      },
      "T.house" => {
        "cover" => Dir.glob("app/assets/images/folio/job/arsomsilp/PLATE26.jpg"),
        "images" => Dir.glob("app/assets/images/folio/job/arsomsilp/T.house/*.jpg")
      }
    }
  end
end