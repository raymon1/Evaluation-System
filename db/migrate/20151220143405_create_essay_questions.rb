class CreateEssayQuestions < ActiveRecord::Migration
  def change
    create_table :essay_questions do |t|

      t.timestamps null: false
    end
  end
end
