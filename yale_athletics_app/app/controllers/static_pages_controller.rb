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
      @rosters_ids = []
      @rosters_ids = Roster.where(college: @college, sport: @sport).ids
      @rosters_ids.each(&:to_s)

      @students_ids = []

      @rosters_ids.each do |roster|
        @students_ids +=
          RostersStudentsThrough.where(roster_id: roster).pluck(:student_id)
      end

      @students_ids.uniq!

      @students = []

      @students_ids.each do |i|
        @students << Student.find(i)
      end

      # filter students only if params are valid
      unless @name.nil? || @name.empty?
        @students = @students.select { |player| player.name == @name }
      end

      unless @hometown.nil? || @hometown.empty?
        @students = @students.select { |player| player.hometown == @hometown }
      end
    end
  end
end
