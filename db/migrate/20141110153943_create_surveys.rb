class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end

    add_index :surveys, :user_id
  end
end
