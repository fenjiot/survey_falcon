class CreateMultiChoiceOptions < ActiveRecord::Migration
  def change
    create_table :multi_choice_options do |t|
      t.string :body, null: false

      t.timestamps null: false
    end
  end
end
