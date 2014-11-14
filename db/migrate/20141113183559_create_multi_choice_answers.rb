class CreateMultiChoiceAnswers < ActiveRecord::Migration
  def change
    create_table :multi_choice_answers do |t|
      t.integer :multi_choice_option_id, null: false

      t.timestamps null: false
    end

    add_index :multi_choice_answers, :multi_choice_option_id
  end
end
