class CreateTextStyles < ActiveRecord::Migration
  def change
    create_table :text_styles do |t|
      t.integer :question_id, presence: true, null: false
      t.text :body, presence: true, null: false

      t.timestamps presence: true, null: false
    end

    add_index :text_styles, :question_id 
  end
end
