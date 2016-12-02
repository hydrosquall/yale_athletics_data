class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def listing
    # search params
    @sport = params[:sports]
    @name = params[:name]
    @hometown = params[:hometown]

    # query rosters if sport specified, otherwise get all players
    if @sport.nil?
      @students = Student.where(name: @name, hometown: @hometown)
    else
      @rosters = Roster.where(sport: @sport)
      @students = []

      @rosters.each do |roster|
        @students << roster.players
      end

      @students.where(name: @name, hometown: @hometown)
   end
  end
end
