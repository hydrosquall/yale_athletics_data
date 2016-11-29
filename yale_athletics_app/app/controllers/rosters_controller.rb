class RostersController < ApplicationController
  def index
    @rosters = Roster.all
  end

  def import
    Roster.import
    redirect_to rosters_index_url, notice: "Rosters Data Imported Successfully!"
  end
end
