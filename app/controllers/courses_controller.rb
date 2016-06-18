class CoursesController < ApplicationController
  def show
  end

  def index
    @all_courses = Course.all
    @enrolled_courses = Course.joins(:enrollment).where(:enrollments: {enrollment_id: enrollment.id}).joins(:child).where(:children: { child_id: params[id] })
  end
end
