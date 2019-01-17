class CreateCohortCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_courses  do |t|
       t.integer :course_id
       t.integer :cohort_id
    end
  end
end
