class University < ActiveRecord::Base
  has_many :students
  has_and_belongs_to_many :teachers
end
