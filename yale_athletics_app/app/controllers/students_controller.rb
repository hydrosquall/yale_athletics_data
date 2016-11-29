class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def import
    Student.import
    redirect_to root_url, notice: "Athletes Data Imported Successfully!"
  end
end
