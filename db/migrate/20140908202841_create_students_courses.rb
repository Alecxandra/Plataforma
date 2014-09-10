class CreateStudentsCourses < ActiveRecord::Migration
  def change
    create_table :courses_students do |t|
      t.belongs_to :student
      t.belongs_to :course
    end
    add_index :courses_students, [:student_id, :course_id], unique: true, name: "courses_students"
  end
end
