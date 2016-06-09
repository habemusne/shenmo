class CoursesController < ApplicationController
  respond_to :html, :json

  def index
    respond_with Course.all
  end

  def show
    # respond_to do |format|
    #   format.html { @ng_app = 'courses' }
    #   format.json { @courses = current_user.courses }
    # end
    repond_with Course.find(params[:id])
  end

  def create
    @course = course.new(params[:course]) 
    @course.creator = current_user 
    @course.save 
    respond_with(@course, :template => 'courses/show') 
  end

  private
  def course_params
    # params.require(:course).permit()
  end

end
