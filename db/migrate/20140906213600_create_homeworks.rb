class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.text :descripcion
      t.datetime :fecha_asignacion
      t.datetime :fecha_entrega
      t.decimal :nota
      t.belongs_to :teacher
      t.belongs_to :course
      t.timestamps
    end
  end
end
