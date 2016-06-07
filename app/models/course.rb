class Course < ActiveRecord::Base
  belongs_to :semester
  belongs_to :school
  has_many :gradings
  has_many :schedule
end
