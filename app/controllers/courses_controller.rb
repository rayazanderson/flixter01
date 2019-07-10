class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def create
    @course = current_user.courses.create(course_params)
    redirect_to instructor_course_path(@course)
  end

  private

  def course_params
    params.require(:course).permit(:title, :description, :cost)
  end

  def show
    @course = Course.find(params[:id])
  end
end