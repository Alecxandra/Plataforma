class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :nombre
      t.string :ciudad
      t.text :direccion

      t.timestamps
    end
  end
end
