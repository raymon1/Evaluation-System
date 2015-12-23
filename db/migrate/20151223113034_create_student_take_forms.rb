class CreateStudentTakeForms < ActiveRecord::Migration
  def change
    create_table :student_take_forms do |t|

      t.timestamps null: false
    end
  end
end
