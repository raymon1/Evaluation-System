class CreateMcqChoices < ActiveRecord::Migration
  def change
    create_table :mcq_choices do |t|

      t.timestamps null: false
    end
  end
end
