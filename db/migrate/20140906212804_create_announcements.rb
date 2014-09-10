class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.text :texto
      t.belongs_to :course
      t.belongs_to :user

      t.timestamps
    end
  end
end
