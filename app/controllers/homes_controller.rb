class HomesController < ApplicationController
  def index
    @images = {
      "job" => {
        "archen" => Dir.glob("app/assets/images/folio/job/archen/*.jpg"),
        "arsomsilp" => Dir.glob("app/assets/images/folio/job/arsomsilp/*.jpg")
      },
      "study" => {
        "general" => Dir.glob("app/assets/images/folio/study/*.jpg"),
        "thesis" => Dir.glob("app/assets/images/folio/study/thesis/*.jpg")
      }
    }
  end
end