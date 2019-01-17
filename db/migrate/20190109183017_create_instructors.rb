class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :username
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :password
      t.string :salary
      t.integer :age
      t.string :education

      t.timestamps
    end
  end
end
