class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id, presence: true, null: false
      t.string :style_type, presence: true, null: false
      t.integer :style_id, presence: true, null: false

      t.timestamps presence: true, null: false
    end

    add_index :questions, :survey_id
  end
end
