class Schedule < ActiveRecord::Base
  belongs_to :course
  belongs_to :week_day
end
