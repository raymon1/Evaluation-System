class CreateNumericalQuestions < ActiveRecord::Migration
  def change
    create_table :numerical_questions do |t|

      t.timestamps null: false
    end
  end
end
