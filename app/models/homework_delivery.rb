class HomeworkDelivery < ActiveRecord::Base
  belongs_to :homework
  mount_uploader :work, WorkUploader
end
