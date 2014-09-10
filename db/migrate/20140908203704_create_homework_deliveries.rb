class CreateHomeworkDeliveries < ActiveRecord::Migration
  def change
    create_table :homework_deliveries do |t|
      t.string :file_path
      t.belongs_to :homework
      t.belongs_to :student
      t.timestamps
    end
  end
end
