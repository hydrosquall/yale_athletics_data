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

    # query rosters if sport specified, otherwise get players with name and homt
    if @sport.nil?
      @students = Student.where(name: @name, hometown: @hometown)
    else
      @rosters = Roster.where(college: @college, sport: @sport)
      @students_ids = []

      @rosters.each do |roster|
        roster.players.each do |i|
          @students_ids << i
        end
      end
      @students_ids.uniq!
      @students []

      @student_ids.each do |i|
        @students << Student.find(i)
      end

      @students = @students.select { |player| player.name == @name }
      @students = @students.select { |player| player.hometown == @hometown }
    end
  end
end
