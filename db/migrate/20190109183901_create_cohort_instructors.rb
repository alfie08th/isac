class CreateCohortInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_instructors  do |t|
       t.integer :instructor_id
       t.integer :cohort_id
    end
  end
end
