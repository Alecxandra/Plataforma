class Teacher < ActiveRecord::Base
  has_and_belongs_to_many :universities
  has_many :courses
end
