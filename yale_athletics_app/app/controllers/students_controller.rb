class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def import
    Student.import(params[:file])
    redirect_to root_path, notice: "Athletes Data Imported Successfully!"
  end
end
