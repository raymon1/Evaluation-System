class CreateEnrollins < ActiveRecord::Migration
  def change
    create_table :enrollins do |t|

      t.timestamps null: false
    end
  end
end
