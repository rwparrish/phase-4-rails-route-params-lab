class StudentsController < ApplicationController

  # def index
  #   if params[:name]
  #     students = Student.by_name(params[:name])
  #   else
  #     students = Student.all
  #   end
  #   render json: students
  # end

  def index
    students = if params[:name]
                 Student.by_name(params[:name])
               else
                 Student.all
               end    
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
