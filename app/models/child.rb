class Child < ActiveRecord::Base
  belongs_to :user
  belongs_to :grade
  has_many :enrollments, dependent: :destroy
  has_many :courses, through: :enrollments
end
