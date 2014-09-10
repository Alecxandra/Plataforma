class CreateUniversitiesTeachers < ActiveRecord::Migration
  def change
    create_table :teachers_universities do |t|
      t.belongs_to :university
      t.belongs_to :teacher
    end
    add_index :teachers_universities, [:university_id,:teacher_id], unique: true, name: "teachers_universities"
  end
end
