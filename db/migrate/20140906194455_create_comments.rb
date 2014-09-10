class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :texto
      t.belongs_to :announcement
      t.belongs_to :user
      t.timestamps
    end
  end
end
