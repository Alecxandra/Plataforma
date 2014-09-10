class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :codigo, null: false
      t.string :especialidad
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.belongs_to :user
      t.timestamps
    end
  end
end
