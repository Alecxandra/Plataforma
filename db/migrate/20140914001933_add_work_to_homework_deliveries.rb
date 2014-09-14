class AddWorkToHomeworkDeliveries < ActiveRecord::Migration
  def change
    add_column :homework_deliveries, :work, :string
  end
end
