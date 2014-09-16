class AddGradeToHomeworkDelivery < ActiveRecord::Migration
  def change
    add_column :homework_deliveries, :nota, :decimal
  end
end
