class HomesController < ApplicationController
  def index
    @images = {
      "job" => {
        "archen" => Dir.glob("app/assets/images/folio/job/archen/*_thumb.jpg"),
        "arsomsilp" => Dir.glob("app/assets/images/folio/job/arsomsilp/*_thumb.jpg")
      },
      "study" => {
        "general" => Dir.glob("app/assets/images/folio/study/*_thumb.jpg"),
        "thesis" => Dir.glob("app/assets/images/folio/study/thesis/*_thumb.jpg")
      }
    }
  end
end