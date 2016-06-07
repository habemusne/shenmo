class WeekDay < ActiveRecord::Base
  has_many :schedules
end
