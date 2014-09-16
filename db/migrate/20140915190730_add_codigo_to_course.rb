class AddCodigoToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :codigo, :string
  end
end
