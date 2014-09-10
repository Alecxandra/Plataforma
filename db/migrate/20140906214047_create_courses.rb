class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :nombre
      t.date :ano
      t.integer :trimestre
      t.belongs_to :teacher
      t.timestamps
    end
  end
end
