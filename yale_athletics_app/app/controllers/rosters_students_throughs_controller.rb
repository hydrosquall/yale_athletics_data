class RostersStudentsThroughsController < ApplicationController
  def index
    @throughs = RostersStudentsThrough.all
  end

  def import
    RostersStudentsThrough.import
    redirect_to root_url, notice: "Through table Imported Successfully!"
  end
end
