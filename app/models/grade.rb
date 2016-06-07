class Grade < ActiveRecord::Base
  has_many :children
end
