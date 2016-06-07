class Grading < ActiveRecord::Base
  belongs_to :course
  belongs_to :child
end
