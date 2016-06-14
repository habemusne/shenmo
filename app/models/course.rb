class Course < ActiveRecord::Base
  belongs_to :semester
  belongs_to :school
  has_many :schedules, dependent: :destroy
  has_many :week_days, through: :schedules
  has_many :enrollments, dependent: :destroy
  has_many :children, through: :enrollments
end
