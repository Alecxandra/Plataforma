class AddTitleToHomework < ActiveRecord::Migration
  def change
    add_column :homeworks, :titulo, :string
  end
end
