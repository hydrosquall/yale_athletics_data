class HighSchoolsController < ApplicationController
  def index
    @high_Schools = HighSchool.all
  end

  def import
    HighSchool.import
    redirect_to high_schools_index_url, notice: "High Schools Data Imported
                                                Successfully!"
  end
end
