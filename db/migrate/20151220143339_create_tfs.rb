class CreateTfs < ActiveRecord::Migration
  def change
    create_table :tfs do |t|

      t.timestamps null: false
    end
  end
end
