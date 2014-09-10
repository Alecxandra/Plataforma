class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.belongs_to :university
      t.belongs_to :user
      t.timestamps
    end
  end
end
