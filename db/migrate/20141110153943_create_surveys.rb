class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end

    add_index :surveys, :user_id, null: false
  end
end
