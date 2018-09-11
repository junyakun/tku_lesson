class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy,]
  
  def index
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
    else
      flash.now[:alert] = @student.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    @student.update(student_params)
    redirect_to students_path
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit(:lesson, :name, :date, :note)
  end

  def set_student
    @student = Student.find(params[:id])
  end

    
end
